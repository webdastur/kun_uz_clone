import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';

class PostWithTitleAndImageLeft extends StatelessWidget {
  PostWithTitleAndImageLeft({this.length, this.size});

  final int length;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ...List<Widget>.generate(
            length,
            (index) => Container(
              padding: EdgeInsets.all(15),
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        width: size.width * 0.20,
                        height: size.height * 0.10,
                        child: Utils.getNetworkImage(),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Cutesum.loremCutesum(words: 15),
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              DateFormat("HH:mm / dd.MM.y")
                                  .format(DateTime.now()),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
