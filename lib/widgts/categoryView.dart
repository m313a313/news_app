import 'package:flutter/material.dart';

import 'newsListViewBuilder.dart';
class CategoryView extends StatelessWidget {
  const CategoryView({required this.categoryName,super.key});
 final String categoryName;
  @override
  Widget build(BuildContext context) {

    return  Scaffold (
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
             categoryName,
              style:
            const  TextStyle(  color: Colors.black),
            ),
        const    Text(
              'News',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
        body: CustomScrollView(
      slivers: [
        NewListViewBulider(categoryName: categoryName,)
      ],
    ));
  }
}
