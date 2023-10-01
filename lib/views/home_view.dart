import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/list_of_articles_view_models.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: ElevatedButton(
        child: Text("Fetch Data"),
        onPressed: () async{
          await Provider.of<ArticlesListViewModel>(context,listen: false).fetchArticles();
          print(Provider.of<ArticlesListViewModel>(context,listen: false).articlesList);
        },
      ),


    ),);
  }
}