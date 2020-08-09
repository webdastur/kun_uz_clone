import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BigImagePost extends StatelessWidget {
  const BigImagePost({
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
        ...List.generate(
          length,
          (index) => Container(
            height: size.height * 0.35,
            width: size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Utils.getNetworkImage(),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 30,
                          blurRadius: 60,
                        ),
                      ],
                    ),
                    child: Text(
                      Cutesum.loremCutesum(words: 10),
                      style: GoogleFonts.merriweather(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
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
