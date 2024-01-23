import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/ArticleModel.dart';
import 'package:newsapp/Services/NewsService.dart';
import 'NewsTile.dart';

class newListView extends StatelessWidget {
  const newListView({ super.key,required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return
        SliverList(
      delegate:SliverChildBuilderDelegate(childCount:articles.length,
            (context,i){
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTile(article: articles[i],),

      );


    })


      ,)
    ;
  }
}
