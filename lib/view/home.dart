import 'package:flutter/material.dart';
import 'package:news_byte/view/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl:
                    "https://images.unsplash.com/photo-1541560052-77ec1bbc09f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fG5ld3N8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
                newsTitle: "Phone Usage of Teens at alarming stage",
                newsDescription:
                    "According to the study, 60% of teens—those between the ages of 13 to 17—say that spending too much time online is a “major” problem facing their age group, with about nine in 10 teens dubbing it a problem. More than half of teens (54%) say they spend too much time on their cellphones, and 41% say they overdo it on social media.",
                newsUrl:
                    "https://qz.com/1367506/pew-research-teens-worried-they-spend-too-much-time-on-phones");
          }),
    );
  }
}
