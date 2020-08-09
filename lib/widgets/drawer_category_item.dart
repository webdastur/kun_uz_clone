import 'package:flutter/material.dart';

class DrawerCategoryItem extends StatelessWidget {
  const DrawerCategoryItem({
    Key key,
    this.title,
    this.hasNext = false,
    this.hasHypen = false,
  }) : super(key: key);

  final String title;
  final bool hasNext;
  final bool hasHypen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              if (hasHypen)
                SizedBox(
                  width: 10,
                ),
              if (hasHypen)
                Container(
                  height: 1,
                  width: 10,
                  color: Colors.blue,
                ),
            ],
          ),
          hasNext
              ? SizedBox(
                  height: 30,
                )
              : SizedBox(
                  height: 60,
                ),
        ],
      ),
    );
  }
}
