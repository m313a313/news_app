import 'package:flutter/material.dart';

import '../Models/ArticleModel.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              article.image ??'https://www.reuters.com/resizer/5EfeiFuFMzaaHV-HZXXjmzaUyMs=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/TEMMZGEFKZNTVHSC22SBKNRQKU.jpg',

              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
       article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
      article.subtitle ?? '--',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
