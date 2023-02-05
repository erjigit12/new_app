import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/constants/api.dart';
import 'package:new_app/model/copy_model.dart';

class TopNewsRepo {
  final http.Client client = http.Client();
  Future<TopNews?> fetchNews() async {
    final uri = Uri.parse(ApiConst.topNews);

    final response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      // print(response.body);
      // print(response.body.runtimeType);

      final data = jsonDecode(response.body);
      // print(data);
      // print(data.runtimeType);

      final topNews = TopNews.fromJson(data);
      return topNews;
    } else {
      return null;
    }
  }
}
