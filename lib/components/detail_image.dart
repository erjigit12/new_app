import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants/api.dart';
import 'package:new_app/model/copy_model.dart';

class NewsDetailImage extends StatelessWidget {
  const NewsDetailImage({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Article news;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: news.urlToImage ?? ApiConst.image,
      placeholder: (context, url) => Image.asset('assets/images/news.jpg'),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/error.jpg'),
    );
  }
}
