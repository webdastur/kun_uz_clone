import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kun_uz_clone/helpers/utils.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';

class FirstPostWithBigImage extends StatelessWidget {
  const FirstPostWithBigImage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.70,
      width: size.width,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.35,
                child: Utils.getNetworkImage(),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black54,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    DateFormat("HH:mm / dd.MM.y").format(DateTime.now()),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                  child: Text(
                    "O'zbekiston",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  Cutesum.loremCutesum(words: 18),
                  style: GoogleFonts.merriweather(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Cutesum.loremCutesum(words: 23),
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
