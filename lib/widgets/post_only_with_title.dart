import 'package:flutter/material.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostOnlyWithTitle extends StatelessWidget {
  const PostOnlyWithTitle({
    Key key,
    this.length,
  }) : super(key: key);

  final int length;

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
                children: [
                  Row(
                    children: [
                      Icon(MdiIcons.calendarBlankOutline),
                      Text("21:37 / 07.08.2020"),
                      Spacer(),
                      Text(
                        "O'zbekiston",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    Cutesum.loremCutesum(words: 15),
                    style: TextStyle(fontSize: 15),
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
