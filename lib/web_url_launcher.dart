import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/custom_image_controller.dart';
import 'package:fstore/models/entities/blog.dart';
import 'package:fstore/routes/flux_navigate.dart';
import 'package:http/http.dart' as http;
import 'package:inspireui/utils/http_client.dart';
import 'package:fstore/screens/blog/views/blog_detail_screen.dart';
import 'package:path/path.dart';


mixin WebViewUrlLaunch{

  Future<bool> onTapUrl(String url) async {
    String paramLink=url.replaceAll("https://publictv.in/", "").replaceAll("/", "");
    print("**Slog");
    print(paramLink);
    var blog = await  getBlogByPermalink(paramLink);
    if (blog != null) {

      print("blog is not empty");
      print( blog.imageFeature);
      await FluxNavigate.pushNamed(
        RouteList.detailBlog,
        arguments: BlogDetailArguments(blog: blog),
      );
    }
    return true;
  }

  Future<Blog?> getBlogByPermalink(String blogPermaLink) async {
    print("slug is");
    print(blogPermaLink);

    try {
      final response = await httpGet(
          Uri.parse('https://publictv.in/wp-json/wp/v2/posts?slug=$blogPermaLink'));
      // 'https://publictv.in/wp-json/api/flutter_blog/blog/dynamic?url=${blogPermaLink.replaceAll("", "/")}'
      //     .toUri()!);
      final body =jsonDecode(response.body);

      print("image data##");
      var post=body[0];
      CustomImageController.externalImage=post["featured_media_src_url"];
      if (response.statusCode == 200) {
        print("after response");
        print(response.body);
        print(Blog.fromJson(body[0]));
        return Blog.fromJson(body[0]);

      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }
  showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 7),child:Text("Loading..." )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }
}


class CreateDialogContext{
  static late BuildContext pre;
}