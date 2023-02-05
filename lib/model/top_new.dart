import 'package:new_app/model/articles.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Articles> articles;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json['stasus'],
      totalResults: json['totalResults'],
      articles: List<Articles>.from(
          json['articles'].map((x) => Articles.fromJson(x))),
    );
  }
}
