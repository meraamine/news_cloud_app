import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String articleUrl;

  Article({required this.title, required this.description, required this.imageUrl, required this.articleUrl});

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
        title: jsonData['title'],
        description: jsonData['description'],
        imageUrl: jsonData['urlToImage'],
        articleUrl: jsonData['url']);
  }
}

//  factory Address.fromJson(Map<String, dynamic> json) =>
//       _$AddressFromJson(json);
//   Map<String, dynamic> toJson() => _$AddressToJson(this);
// }

//for (final item in bodyItems) {
//     final children = (item["children"] as List).map((e) => ChildrenBodyData.fromJson(e)).toList();
//
//     childrenItems.addAll(children);
// }
// User.fromJson(Map<String, dynamic> json)
//       : name = json['name'],
//         email = json['email'];
//
//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'email': email,
//       };