import 'package:flutter/material.dart';
import 'package:news_cloud_app/services/news_service.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'package:json_serializable/json_serializable.dart';

void main() {
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: ()async
            {
              NewsApi newsApi = NewsApi();
              var articles = await newsApi.fetchArticlesByCategory('health');
              for (var article in articles){
                print(article.title);
              }
            },
            child: Container(
            child: Text('fetchData'),
            ),
          ),
        ),
      ),
    );
  }
}
