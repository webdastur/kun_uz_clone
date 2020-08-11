import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';

class HorizontalScrollPost extends StatelessWidget {
  const HorizontalScrollPost({
    Key key,
    @required this.length,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          height: size.height * 0.45,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  length,
                  (index) => Container(
                    height: size.height * 0.4,
                    width: size.width * 0.6,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.25,
                          width: size.width * 0.6,
                          child: Utils.getNetworkImage(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              Cutesum.loremCutesum(words: 12),
                              style: GoogleFonts.merriweather(fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
