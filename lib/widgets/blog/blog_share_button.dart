import 'dart:async';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../common/tools/flash.dart';
import '../../generated/l10n.dart';
import '../../models/entities/blog.dart';
import '../../services/services.dart';

class ShareButton extends StatelessWidget {
  final Blog blog;

  const ShareButton({required this.blog});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
        // var url = blog.link;
        // print("url:::");
        // print(url);
        // if (url.isNotEmpty) {
        //   Share.share(url);
        var url = blog.link;
        if (url.isNotEmpty) {
          final dynamicLinkParams = DynamicLinkParameters(
            link: Uri.parse(url),
            uriPrefix: "https://publictv.page.link",
            androidParameters: const AndroidParameters(packageName: "com.phonegap.publictv"),
            iosParameters: const IOSParameters(bundleId: "com.writemenmedia.publictv"),
          );
          final dynamicLink =
          await FirebaseDynamicLinks.instance.buildLink(dynamicLinkParams);
          await Share.shareUri(dynamicLink);
          // unawaited(
          //   FlashHelper.message(
          //     context,
          //     message: S.of(context).generatingLink,
          //     duration: const Duration(seconds: 1),
          //   ),
          // );
          // Services().firebase.shareDynamicLinkProduct(itemUrl: url);
        } else {
          unawaited(
            FlashHelper.errorMessage(
              context,
              message: S.of(context).failedToGenerateLink,
              duration: const Duration(seconds: 1),
            ),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
                color: Colors.grey
            )
        ),
        child: const Icon(
          Icons.share,
          size: 18.0,
          color: Colors.blue
        ),
      ),
    );
  }
}
