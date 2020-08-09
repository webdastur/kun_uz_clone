import 'package:flutter/material.dart';

class DrawerLangChoice extends StatelessWidget {
  const DrawerLangChoice({
    this.title,
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        DrawerCircleLang(lang: "O'Z"),
        DrawerCircleLang(lang: "Ўз"),
        DrawerCircleLang(lang: "Ру"),
        DrawerCircleLang(lang: "EN"),
      ],
    );
  }
}

class DrawerCircleLang extends StatelessWidget {
  const DrawerCircleLang({
    Key key,
    this.lang,
  }) : super(key: key);

  final String lang;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: Colors.white,
      child: FittedBox(
        child: Text(
          lang,
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
