import 'package:flutter/material.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:kun_uz_clone/widgets/big_image_post.dart';
import 'package:kun_uz_clone/widgets/first_post_with_big_image.dart';
import 'package:kun_uz_clone/widgets/horizontal_scroll_post.dart';
import 'package:kun_uz_clone/widgets/post_big_image_with_border_radius.dart';
import 'package:kun_uz_clone/widgets/post_big_image_with_title.dart';
import 'package:kun_uz_clone/widgets/post_only_with_title.dart';
import 'package:kun_uz_clone/widgets/post_with_title_and_image_left.dart';
import 'package:kun_uz_clone/widgets/post_with_title_and_image_right.dart';

class HomePage extends StatelessWidget {
  HomePage();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          FirstPostWithBigImage(size: size),
          PostOnlyWithTitle(
            length: 4,
          ),
          Utils.bottomMenu(
            context: context,
            title: "So'ngi yangiliklar",
            buttonText: "Barchasi",
          ),
          PostWithTitleAndImageRight(
            length: 4,
            size: size,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Muharrir tanlovi",
          ),
          PostWithTitleAndImageLeft(
            length: 4,
            size: size,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Dolzarb yangiliklar",
          ),
          PostBigImageWithBorderRadius(
            size: size,
            length: 4,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Ko'p o'qilganlar",
          ),
          HorizontalScrollPost(
            size: size,
            length: 4,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Koronavirus o'zbekistonda",
          ),
          BigImagePost(
            size: size,
            length: 4,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Maqolalar",
          ),
          PostBigImageWithTitle(
            length: 4,
            size: size,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Biznes",
          ),
          HorizontalScrollPost(
            length: 4,
            size: size,
          ),
          Utils.bottomMenu(
            context: context,
            title: "Intervyu",
          ),
          BigImagePost(
            size: size,
            length: 4,
          ),
        ],
      ),
    );
  }
}
