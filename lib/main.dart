import 'package:flutter/material.dart';
import 'package:newsapp/Services/NewsService.dart';
import 'package:newsapp/pages/home_page.dart';
import 'package:dio/dio.dart';


void main() {

  runApp(const AppNews());
}




class AppNews extends StatelessWidget {
  const AppNews({super.key});
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_page(),

    );
  }
}
