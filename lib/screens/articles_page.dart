import 'package:flutter/material.dart';
import 'package:kun_uz_clone/widgets/post_big_image_with_title.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          PostBigImageWithTitle(
            length: 10,
            size: size,
          )
        ],
      ),
    );
  }
}
