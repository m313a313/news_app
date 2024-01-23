
import 'package:flutter/material.dart';

import '../Models/CategoryModel.dart';
import 'categoryCard.dart';
class categoryViewList extends StatelessWidget {
  const categoryViewList({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(categoryname: 'Business', image: 'assets/business.avif'),
    CategoryModel(categoryname: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryname: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryname: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryname: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryname: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(categoryname: 'General', image: 'assets/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 85,
        child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
      return  categoryCard(category: categories[i]);
    },
    ));
  }
}
