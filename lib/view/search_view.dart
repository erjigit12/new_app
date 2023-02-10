// ignore_for_file: library_private_types_in_public_api, unused_element

import 'package:flutter/material.dart';
import 'package:new_app/components/new_crd.dart';
import 'package:new_app/constants/text.dart';
import 'package:new_app/model/copy_model.dart';
import 'package:new_app/service/fetch_service.dart';
import 'package:new_app/theme/colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TopNews? topNews;
  bool isSearch = false;
  final controller = TextEditingController();

  Future<void> fetchdata(String text) async {
    isSearch = true;
    setState(() {});
    topNews = await NewsRepo().fetchSearchNews(text);
    isSearch = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: TextField(
          controller: controller,
          onSubmitted: (value) async {
            await fetchdata(value);
          },
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await fetchdata(controller.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    if (isSearch) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (isSearch == false && topNews != null) {
      return ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index) {
          final news = topNews!.articles[index];
          return NewCard(news: news);
        },
      );
    } else {
      return Center(
        child: Text(AppText.searchTitle),
      );
    }
  }
}
