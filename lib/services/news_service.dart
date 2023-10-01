import 'dart:convert';
import 'package:news_cloud_app/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_cloud_app/models/articles_model.dart';

class NewsApi {

  final String apiKey = "0de7302380a740f9afc2b7d0d35bd691";
  List<Article> articlesList=[];


  Future<List<Article>> fetchArticles() async {
    try {

      var url =
      Uri.https('newsapi.org', '/v2/top-headlines', {'country': 'eg','apiKey':'$apiKey'});

      http.Response response = await http.get(url) as http.Response;
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);
        articlesList =articles.articles.map((e) => Article.fromJson(e)).toList();

      } else {
        print("response status code is ${response.statusCode}");
      }
    } on Exception catch (e) {
      print(e);
    }
    return articlesList;

  }

  Future<List<Article>> fetchArticlesByCategory(String category) async {
    try {

      var url =
      Uri.https('newsapi.org', '/v2/top-headlines', {'country': 'eg','apiKey':'$apiKey','category':'$category'});

      http.Response response = await http.get(url) as http.Response;
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);
        articlesList =articles.articles.map((e) => Article.fromJson(e)).toList();

      } else {
        print("response status code is ${response.statusCode}");
      }
    } on Exception catch (e) {
      print(e);
    }
    return articlesList;

  }

}
 //Marinacode

//Future<dynamic> fetchArticles() async {
//     http.Response response = await http.get(Uri.parse(url));




/*class NewsApi {
  final String apiKey = '36479e94e45240c4b564463b32061aff';
  Future<List<Article>> fetchArticles() async {
    try {
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesList articles = ArticlesList.fromJson(jsonData);
        List<Article> articlesList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articlesList;
      } else {
        print('status code = ${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<List<Article>> fetchArticlesByCategory(String category) async {
    try {
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesList articles = ArticlesList.fromJson(jsonData);
        List<Article> articlesList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articlesList;
      } else {
        print('status code = ${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
  }
}
 */
/*
  import 'dart:convert';

  import 'package:news_cloud/models/article_model.dart';
  import 'package:http/http.dart' as http;
  import 'package:news_cloud/models/articles_model.dart';
*/
  /*class NewsApi {
  final String apiKey = '36479e94e45240c4b564463b32061aff';
  Future<List<Article>> fetchArticles() async {
  try {
  http.Response response = await http.get(
  'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
  if (response.statusCode == 200) {
  String data = response.body;
  var jsonData = jsonDecode(data);
  ArticlesList articles = ArticlesList.fromJson(jsonData);
  List<Article> articlesList =
  articles.articles.map((e) => Article.fromJson(e)).toList();
  return articlesList;
  } else {
  print('status code = ${response.statusCode}');
  }
  } catch (ex) {
  print(ex);
  }
  }

  Future<List<Article>> fetchArticlesByCategory(String category) async {
  try {
  http.Response response = await http.get(
  'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey');
  if (response.statusCode == 200) {
  String data = response.body;
  var jsonData = jsonDecode(data);
  ArticlesList articles = ArticlesList.fromJson(jsonData);
  List<Article> articlesList =
  articles.articles.map((e) => Article.fromJson(e)).toList();
  return articlesList;
  } else {
  print('status code = ${response.statusCode}');
  }
  } catch (ex) {
  print(ex);
  }
  }
  }
*/