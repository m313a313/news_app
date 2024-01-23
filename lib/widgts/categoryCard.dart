
import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'categoryView.dart';


class categoryCard extends StatelessWidget {
  const categoryCard({super.key,required this.category});
 final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context,){
          return  CategoryView(categoryName: category.categoryname,);
        }),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 160,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:  DecorationImage(
              fit: BoxFit.fill, image: AssetImage(category.image)),
        ),
        child:  Center(
          child: Text(
            category.categoryname,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );

  }
}
