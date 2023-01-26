class NewsArticle {
  String imgUrl;
  String newsTitle;
  String newsContent;
  String newsUrl;
  String publishedAt;

  NewsArticle(
      {required this.imgUrl,
      required this.newsTitle,
      required this.newsContent,
      required this.publishedAt,
      required this.newsUrl});

  static NewsArticle processData(Map<String, dynamic> article) {
    return NewsArticle(
        imgUrl: article["urlToImage"] ??
            "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
        newsTitle: article["title"] ?? "Not Available",
        newsContent: article["content"] ?? "Not Available",
        publishedAt: article["publishedAt"] ?? "Not Available",
        newsUrl: article["url"] ??
            "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
