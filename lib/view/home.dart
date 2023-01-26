import 'package:flutter/material.dart';
import 'package:news_byte/controller/getNews.dart';
import 'package:news_byte/view/widget/NewsContainer.dart';

import '../model/newsArticle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArticle news;
  bool _isLoading = true;

  FetchNews() async {
    news = await GetNews.getNews();
    setState(() {
      _isLoading = false;
    });
  }
  @override
  void initState() {
    FetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            setState(() {
              _isLoading = true;
            });
            FetchNews();
          },
          itemBuilder: (context, index) {
            return _isLoading ? Center(child: CircularProgressIndicator(),) : NewsContainer(
                imgUrl:
                    news.imgUrl,
                newsTitle: news.newsTitle,
                newsContent:
                    news.newsContent,
                publishedAt: news.publishedAt, 
                newsUrl:
                    news.newsUrl);
          }),
    );
  }
}
