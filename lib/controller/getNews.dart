import 'dart:convert';
import 'dart:math';
import 'package:news_byte/model/newsArticle.dart';
import 'api_key.dart';

import 'package:http/http.dart';
class GetNews{
    static List sources = [
    "the-hindu",
    "the-times-of-india",
    "google-news-in",
    "google-news",
    "bbc-news",
    "techcrunch",
    "techradar",
  ];
  static Future<NewsArticle> getNews() async{
    final random = new Random();
    var randomSource = sources[random.nextInt(sources.length)];
    Response response = await get(Uri.parse('https://newsapi.org/v2/top-headlines?sources=$randomSource&apiKey=$NewsApiKey'));

    Map body_data = jsonDecode(response.body);
    List articles = body_data['articles'];
    final randomNew = new Random();
    var randomArticle = articles[randomNew.nextInt(articles.length)];
    return NewsArticle.processData(randomArticle);
  }
}