import 'package:flutter/material.dart';
import 'package:new_app/constants/api.dart';
import 'package:new_app/model/copy_model.dart';
import 'package:new_app/view/detail_view.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DatailView(news: news),
            ),
          );
        },
        child: Card(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  news.urlToImage ?? ApiConst.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  news.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
