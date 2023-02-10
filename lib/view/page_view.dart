import 'package:flutter/material.dart';
import 'package:new_app/components/new_crd.dart';
import 'package:new_app/constants/county.dart';
import 'package:new_app/constants/text.dart';
import 'package:new_app/model/copy_model.dart';
import 'package:new_app/service/fetch_service.dart';
import 'package:new_app/theme/colors.dart';
import 'package:new_app/view/search_view.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  TopNews? topNews;
  Future<void> fetchNews([String? domain]) async {
    topNews = await NewsRepo().fetchNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: const Text(AppText.appBarText),
        actions: [
          PopupMenuButton(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: (context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: (context, index) {
                final news = topNews!.articles[index];
                return NewCard(news: news);
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ));
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
