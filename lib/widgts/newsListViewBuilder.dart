import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../Models/ArticleModel.dart';
import '../Services/NewsService.dart';
import 'newListView.dart';
class NewListViewBulider extends StatelessWidget {
  const NewListViewBulider({ required this.categoryName, super.key,});
final String categoryName;
  @override
  Widget build(BuildContext context){
    return FutureBuilder <List<ArticleModel>> (
        future:  NewsService(Dio()).getTopHeadLines(category: categoryName), builder: (context, snapshot){
print(snapshot.data);
print('ffffffffff');

print(snapshot.error );
if (snapshot.hasData) {
        return  newListView(articles: snapshot.data!);

      } else if (snapshot.hasError) {
        return   SliverToBoxAdapter(child:
        Align(
          alignment: Alignment.center,
          child: Container(decoration:  BoxDecoration(color: Colors.red ,borderRadius: BorderRadius.circular(10)),
              width: 230,
              height: 32,
              child: const Center(child: Text('oops! Error in fetch data' ,style: TextStyle(color: Colors.white),))),
        )
    );
      }
       else{
        return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator())
        );
      }
    }
    );

  }
}

/*Widget build(BuildContext context) {
    return FutureBuilder(future: future, builder: (context,snapshot){});
    isLoading ? const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(child: CircularProgressIndicator())
    ): articles.isNotEmpty ?
    newListView(articles: articles,)
    :
        SliverToBoxAdapter(child:
    Align(
      alignment: Alignment.center,
      child: Container(decoration:  BoxDecoration(color: Colors.red ,borderRadius: BorderRadius.circular(10)),
          width: 230,
           height: 32,
          child: const Center(child: Text('oops! Error in fetch data' ,style: TextStyle(color: Colors.white),))),
    )
        ); */

