class ApiConst {
  static const apiKey = 'a1d4f68e96574705a599cb9abe3e37a6';
  static topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'ru'}&apiKey=$apiKey';
  static String searchNews(String text) =>
      'https://newsapi.org/v2/everything?q=$text&apiKey=$apiKey';
  static const String image =
      'https://i.ytimg.com/vi/w_Ma8oQLmSM/maxresdefault.jpg';
}
