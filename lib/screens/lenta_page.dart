import 'package:flutter/material.dart';
import 'package:kun_uz_clone/widgets/first_post_with_big_image.dart';
import 'package:kun_uz_clone/widgets/post_with_title_and_image_right.dart';

class LentaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          FirstPostWithBigImage(size: size),
          PostWithTitleAndImageRight(
            length: 10,
            size: size,
          ),
        ],
      ),
    );
  }
}
