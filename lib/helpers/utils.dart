import 'package:flutter/material.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Utils {
  static Widget bottomMenu({
    String title,
    BuildContext context,
    String buttonText = null,
  }) {
    if (title != null)
      return Container(
        padding: EdgeInsets.only(
          right: 15,
          left: 15,
          bottom: 10,
          top: 10,
        ),
        child: Row(
          children: [
            Icon(
              MdiIcons.squareEditOutline,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            if (buttonText != null)
              Container(
                width: 80,
                height: 20,
                child: OutlineButton(
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 12),
                  ),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
          ],
        ),
      );
  }

  static Widget getNetworkImage() {
    return Image.network(
      Cutesum.randomImageUrl(),
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes
                : null,
          ),
        );
      },
    );
  }
}
