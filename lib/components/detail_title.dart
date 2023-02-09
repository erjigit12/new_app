import 'package:flutter/material.dart';
import 'package:new_app/model/copy_model.dart';

class NewsDelailTitle extends StatelessWidget {
  const NewsDelailTitle({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 15, right: 12),
      child: Text(
        news.title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
