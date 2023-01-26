import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsTitle;
  String newsContent;
  String newsUrl;
  String publishedAt;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsTitle,
      required this.newsContent,
      required this.publishedAt,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                imgUrl),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      newsTitle.length > 140
                          ? '${newsTitle.toString().substring(0, 140)}...'
                          : newsTitle,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      publishedAt,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      newsContent.length > 300
                          ? '${newsContent.toString().substring(0, 300)}...'
                          : '${newsContent.toString().substring(0, newsContent.length - 15)}...',
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      print('Going to $newsUrl');
                    },
                    child: Text('Read More')),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
