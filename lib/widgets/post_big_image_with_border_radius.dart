import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostBigImageWithBorderRadius extends StatelessWidget {
  const PostBigImageWithBorderRadius({
    Key key,
    @required this.length,
    @required this.size,
    this.hasVideo = false,
  }) : super(key: key);

  final Size size;
  final int length;
  final bool hasVideo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          length,
          (index) => Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: size.height * 0.30,
                        width: size.width,
                        child: Utils.getNetworkImage(),
                      ),
                    ),
                    if (!hasVideo)
                      Positioned(
                        bottom: 0,
                        left: 20,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            DateFormat("HH:mm / dd.MM.y")
                                .format(DateTime.now()),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    if (hasVideo)
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Icon(
                          MdiIcons.playCircleOutline,
                          size: 50,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    Cutesum.loremCutesum(words: 15),
                    style: GoogleFonts.merriweather(fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
