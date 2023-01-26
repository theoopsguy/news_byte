import 'package:flutter/material.dart';

import '../detail_view.dart';

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
    convertDate(dateData){
      var date = DateTime.parse(dateData);
      return '${date.day}-${date.month}-${date.year} ${date.hour}:${date.minute}';
    }
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.assetNetwork(
                height: 400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                placeholder:
                    "assets/placeholder.png",
                image: imgUrl),
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
                      convertDate(publishedAt),
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      newsContent.length > 300
                          ? '${newsContent.toString().substring(0, 300)}...'
                          : newsContent.length > 15
                              ? '${newsContent.toString().substring(0, newsContent.length - 15)}...'
                              : newsContent,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailedViewScreen(
                                    newsUrl: newsUrl,
                                  )));
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
