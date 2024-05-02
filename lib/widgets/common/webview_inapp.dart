import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart' hide kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:inspireui/widgets/platform_error/platform_error.dart';
import 'package:video_player/video_player.dart';
import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/extensions/extensions.dart';
final navigatorKey = GlobalKey<NavigatorState>();
class WebViewInApp extends StatefulWidget {
  final String url;
  final String? title;
  final String? script;
  final Function(String?)? onUrlChanged;
  final Map<String, String>? headers;
  final Function? onClosed;
  final bool enableForward;
  final bool enableBackward;
  final bool enableClose;
  final Function? overrideNavigation;
  final AppBar? appBar;
  final bool showAppBar;
  final bool showLoading;
  const WebViewInApp({
    Key? key,
    required this.url,
    this.title,
    this.script,
    this.onUrlChanged,
    this.onClosed,
    this.headers,
    this.enableBackward = true,
    this.enableForward = true,
    this.enableClose = true,
    this.overrideNavigation,
    this.appBar,
    this.showAppBar = true,
    this.showLoading = true,
  }) : super(key: key);

  @override
  State<WebViewInApp> createState() => _WebViewInAppState();
}
class _WebViewInAppState extends State<WebViewInApp> {
  final GlobalKey webViewKey = GlobalKey();
  final videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
      'https://livestream.knowtable.xyz:5443/show1/streams/Publictv_adaptive.m3u8'));
  late final ChewieController chewieController;
  int selectedIndex = 1;
  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
        useOnDownloadStart: true,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));
  late PullToRefreshController pullToRefreshController;
  void onTapBackButton() async {
    final value = await webViewController?.canGoBack();
    if (value == true) {
      await webViewController?.goBack();
    } else if (!widget.enableClose && Navigator.canPop(context)) {
      widget.onClosed?.call();
      Navigator.of(context).pop();
    }
  }
  void onTapForwardButton() {
    webViewController?.goForward();
  }
  void onTapCloseButton() async {
    widget.onClosed?.call();
    Navigator.of(context).pop();
  }
  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    if (kAdvanceConfig.alwaysClearWebViewCache) {
      webViewController?.clearCache();
    }
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      materialProgressColors: ChewieProgressColors(
          bufferedColor: Colors.grey, playedColor: Colors.white),
      aspectRatio: 5 / 3,
      showControls: false,
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(color: Colors.black45),
      onRefresh: () async {
        if (isAndroid) {
          await webViewController?.reload();
        } else if (isIos) {
          await webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    if (kIsWeb || isDesktop) {
      return const PlatformError(
       enablePop: false,
      );
    }
    return Scaffold(
      appBar: !widget.showAppBar
          ? null
          :widget.appBar ??
           AppBar(
                backgroundColor: Theme.of(context).colorScheme.background,
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  widget.title ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                leadingWidth: 150,
                actions: [
                  if (widget.enableClose)
                    IconButton(
                      onPressed: onTapCloseButton,
                      icon: const Icon(Icons.close, size: 20),
                    ),
                  const SizedBox(width: 10),
                ],
                leading: Builder(builder: (buildContext) {
                  return Row(
                    children: [
                      const SizedBox(width: 20),
                      if (widget.enableBackward)
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, size: 20),
                          onPressed: onTapBackButton,
                        ),
                      if (webViewController?.canGoForward() != null &&
                          widget.enableForward)
                        IconButton(
                          onPressed: onTapForwardButton,
                          icon: const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                    ],
                  );
                }),
              ),
      body: Chewie(
        controller: chewieController,
      ),
    );
  }
}
