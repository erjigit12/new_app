import 'package:new_app/model/sourse.dart';

class Articles {
  Articles({
    required this.sourse,
    this.author,
    required this.title,
    required this.description,
    this.url,
    this.ulrToImage,
    required this.publishedAt,
    required this.content,
  });

  final Sourse sourse;
  final String? author;
  final String title;
  final String description;
  final String? url;
  final String? ulrToImage;
  final String publishedAt;
  final String? content;

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      sourse: Sourse.fromJson(json['sourse']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      ulrToImage: json['ulrToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
