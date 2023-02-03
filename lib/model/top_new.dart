import 'package:new_app/model/articles.dart';

class TopNew {
  TopNew({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Articles> articles;

  factory TopNew.fromJson(Map<String, dynamic> json) {
    return TopNew(
      status: json['stasus'],
      totalResults: json['totalResults'],
      articles: json['articles'],
    );
  }
}
