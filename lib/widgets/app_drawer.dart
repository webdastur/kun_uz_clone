import 'package:flutter/material.dart';
import 'package:kun_uz_clone/widgets/drawer_category_item.dart';
import 'package:kun_uz_clone/widgets/drawer_lang.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: AppBar().preferredSize.height,
          ),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/menu-bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerLangChoice(
                  title: "Tilni tanlang",
                ),
                SizedBox(
                  height: 40,
                ),
                DrawerCategoryItem(
                  title: "O'zbekiston",
                  hasNext: true,
                  hasHypen: true,
                ),
                DrawerCategoryItem(
                  title: "Jahon",
                  hasNext: true,
                  hasHypen: true,
                ),
                DrawerCategoryItem(
                  title: "Iqtisodiyot",
                  hasNext: true,
                  hasHypen: true,
                ),
                DrawerCategoryItem(
                  title: "Jamiyat",
                  hasNext: true,
                  hasHypen: true,
                ),
                DrawerCategoryItem(
                  title: "Texnologiya",
                  hasNext: true,
                  hasHypen: true,
                ),
                DrawerCategoryItem(
                  title: "Sport",
                  hasHypen: true,
                ),
                // menus for app configurations and something
                DrawerCategoryItem(
                  title: "Sozlamalar",
                  hasNext: true,
                ),
                DrawerCategoryItem(
                  title: "Tanlanganlar",
                  hasNext: true,
                ),
                DrawerCategoryItem(
                  title: "Kun mavzulari",
                  hasNext: true,
                ),
                DrawerCategoryItem(
                  title: "Reklama",
                  hasNext: true,
                ),
                DrawerCategoryItem(
                  title: "Ilova haqida",
                  hasNext: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
