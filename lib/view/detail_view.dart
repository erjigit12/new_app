// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_app/components/detail_button.dart';
import 'package:new_app/components/detail_date.dart';
import 'package:new_app/components/detail_desc.dart';
import 'package:new_app/components/detail_divider.dart';
import 'package:new_app/components/detail_image.dart';
import 'package:new_app/components/detail_title.dart';
import 'package:new_app/model/copy_model.dart';
import 'package:new_app/theme/colors.dart';

class DatailView extends StatelessWidget {
  const DatailView({
    Key? key,
    required this.news,
  }) : super(key: key);
  final Article news;
  @override
  Widget build(BuildContext context) {
    final time = DateFormat('d MMM, y. H:m').format(
      news.publishedAt,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: Text(
          news.title,
          overflow: TextOverflow.fade,
        ),
        actions: const [
          Icon(Icons.share),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          NewsDelailTitle(news: news),
          const SizedBox(height: 12),
          const NewsDetailDivider(),
          const SizedBox(height: 12),
          NewsDetailDate(time: time),
          const SizedBox(height: 20),
          NewsDetailImage(news: news),
          NewsDetailDesc(news: news),
          const SizedBox(height: 20),
          const NewsDetailButton(),
        ],
      ),
    );
  }
}
