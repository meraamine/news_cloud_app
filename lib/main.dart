import 'package:flutter/material.dart';
import 'package:news_cloud_app/services/news_service.dart';
import 'package:news_cloud_app/view_models/list_of_articles_view_models.dart';
import 'package:news_cloud_app/views/home_view.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:reflectable/reflectable.dart';


void main() {
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticlesListViewModel>(
      create:(context)=> ArticlesListViewModel(),
      child: MaterialApp(
        title: "News Cloud",
        home: HomeView(),
      ),
    );
  }
}


class MyNewsCloud extends StatelessWidget {
  const MyNewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News Cloud",
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () async {
              print("hello");
              NewsApi newsApi = NewsApi();
              var articles = await newsApi.fetchArticles();
              for(var article in articles)
              {
                print(article.title);
              }
            },
            child: Container(
              child: Text("Fetching Data"),
            ),
          ),
        ),
      ),
    );
  }
}