import 'package:flutter/material.dart';
import 'package:kun_uz_clone/widgets/post_big_image_with_border_radius.dart';
import 'package:kun_uz_clone/widgets/post_big_image_with_title.dart';
import 'package:kun_uz_clone/widgets/post_with_title_and_image_left.dart';

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          child: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(
                text: "Video",
              ),
              Tab(
                text: "Foto",
              ),
              Tab(
                text: "Audio",
              ),
            ],
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  PostBigImageWithBorderRadius(
                    length: 10,
                    size: size,
                    hasVideo: true,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  PostBigImageWithTitle(
                    length: 10,
                    size: size,
                    hasPhoto: true,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  PostWithTitleAndImageLeft(
                    length: 10,
                    size: size,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
