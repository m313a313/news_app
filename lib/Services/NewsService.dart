import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/ArticleModel.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=bf1cb3dafde4497281bd1dd0bf218edb&category=$category');
      Map<String, dynamic> jsonData = response.data;
      debugPrint(response.statusMessage);
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleMODEL = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description']);
        articlesList.add(articleMODEL);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
