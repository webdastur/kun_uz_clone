import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostBigImageWithTitle extends StatelessWidget {
  const PostBigImageWithTitle({
    Key key,
    @required this.length,
    @required this.size,
    this.hasPhoto = false,
  }) : super(key: key);

  final Size size;
  final int length;
  final bool hasPhoto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          length,
          (index) => Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.30,
                      width: size.width,
                      child: Utils.getNetworkImage(),
                    ),
                    if (!hasPhoto)
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
                    if (hasPhoto)
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Icon(
                          MdiIcons.cameraWirelessOutline,
                          size: 50,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
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
