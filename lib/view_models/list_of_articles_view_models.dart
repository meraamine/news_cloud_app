import 'package:flutter/widgets.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';

class ArticlesListViewModel extends ChangeNotifier{

  List<Article> _articlesList=[];
  List<Article> _articlesListByCategory=[];

  Future<void> fetchArticles() async
  {
    _articlesList=await NewsApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async
  {
    _articlesListByCategory=await NewsApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  List<Article> get articlesList => _articlesList;
  List<Article> get articlesListByCategory => _articlesListByCategory;

}