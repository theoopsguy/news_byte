import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsTitle;
  String newsDescription;
  String newsUrl;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsTitle,
      required this.newsDescription,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.network(imgUrl),
            Text(newsTitle),
            Text(newsDescription),
            ElevatedButton(
                onPressed: () {
                  print('Going to $newsUrl');
                },
                child: Text('Read More'))
          ],
        ));
  }
}
