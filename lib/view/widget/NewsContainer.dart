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
                      height: 10,
                    ),
                    Text(
                      newsTitle,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      newsDescription,
                      style: TextStyle(fontSize: 18),
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
