import 'package:flutter/material.dart';
import '../widgts/categoryViewList.dart';
import '../widgts/newsListViewBuilder.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
        SliverToBoxAdapter( child:categoryViewList()),
        SliverToBoxAdapter(child: SizedBox(height: 32,),),
        NewListViewBulider(categoryName: 'general'),


      ],),
      )
      /*Padding(  الجزء  العلوي يكون ثابث
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          categoryViewList(),
          SizedBox(height: 32,),
          Expanded(child:  NewListViewBulider())

        ],),
      ),*/
      );

  }
}
