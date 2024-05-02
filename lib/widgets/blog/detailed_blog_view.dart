import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fstore/custom_image_controller.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../common/tools.dart';
import '../../models/entities/blog.dart';
import 'detailed_blog_mixin.dart';

class BlogDetail extends StatefulWidget {
  final Blog item;

  const BlogDetail({Key? key, required this.item}) : super(key: key);

  @override
  State<BlogDetail> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogDetail> with DetailedBlogMixin {
  late BannerAd _bannerAd;
  late BannerAd _bannerAd2;
  Blog blogData = const Blog.empty();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bannerAd.dispose();
  }

  @override
  void initState() {
    blogData = widget.item;
    super.initState();
    if(Platform.isIOS){
      _bannerAd = BannerAd(
        adUnitId: 'ca-app-pub-9639279280222695/5699866851',
        size: AdSize.banner,
        request: AdRequest(),
        listener: BannerAdListener(),
      );
    }
    else{
      _bannerAd = BannerAd(
        adUnitId: 'ca-app-pub-9639279280222695/9447540179',
        size: AdSize.banner,
        request: AdRequest(),
        listener: BannerAdListener(),
      );
    }

    _bannerAd.load();
  }

  @override
  void didUpdateWidget(covariant BlogDetail oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.item != widget.item) {
      blogData = widget.item;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("#feature image");
    print(blogData.imageFeature);
    const bannerHigh = 180.0;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.8),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      48,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
            actions: [
              renderBlogFunctionButtons(blogData, context),
            ],
            expandedHeight: bannerHigh,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ImageResize(
                url: blogData.imageFeature.isEmpty
                    ? CustomImageController.externalImage!
                    : blogData.imageFeature,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                size: kSize.medium,
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          blogData.title,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      renderAuthorInfo(blogData, context),
                      const SizedBox(
                        height: 10,
                      ),
                      renderAudioWidget(blogData, context),
                      renderBlogContentWithTextEnhancement(blogData),
                      renderRelatedBlog(blogData.categoryId),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
