import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kun_uz_clone/screens/articles_page.dart';
import 'package:kun_uz_clone/screens/home_page.dart';
import 'package:kun_uz_clone/screens/lenta_page.dart';
import 'package:kun_uz_clone/screens/media_page.dart';
import 'package:kun_uz_clone/widgets/app_drawer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  bool isSearchPressed = false;
  int _currentIndex = 0;

  var _pages = [
    HomePage(),
    LentaPage(),
    ArticlesPage(),
    MediaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: buildAppBar(),
      endDrawer: AppDrawer(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: _pages[_currentIndex],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (value) {
        if (value < _pages.length)
          setState(() {
            _currentIndex = value;
          });
      },
      items: [
        buildBottomNavigationBarItem(
            iconData: MdiIcons.homeOutline, title: "Bosh sahifa"),
        buildBottomNavigationBarItem(
            iconData: MdiIcons.fileOutline, title: "Lenta"),
        buildBottomNavigationBarItem(
            iconData: MdiIcons.postOutline, title: "Maqolalar"),
        buildBottomNavigationBarItem(
            iconData: MdiIcons.fileVideoOutline, title: "Media"),
        buildBottomNavigationBarItem(
            iconData: MdiIcons.virus, title: "Koronavirus", hasColor: true),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    IconData iconData,
    String title,
    bool hasColor = false,
  }) {
    return BottomNavigationBarItem(
        icon: Icon(
          iconData,
          color: hasColor ? Colors.pink : null,
        ),
        title: Text(title));
  }

  AppBar buildAppBar() {
    FocusNode _searchFocus = FocusNode();
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          isSearchPressed ? Icons.arrow_back : Icons.search,
          size: 35,
        ),
        onPressed: () {
          setState(() {
            isSearchPressed = !isSearchPressed;
          });
          if (isSearchPressed) _searchFocus.requestFocus();
        },
        color: Colors.black54,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            size: 35,
          ),
          onPressed: () {
            _drawerKey.currentState.openEndDrawer();
          },
          color: Colors.black54,
        ),
      ],
      title: isSearchPressed
          ? TextField(
              focusNode: _searchFocus,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: "Qidirish...",
                hintStyle: TextStyle(fontSize: 20),
              ),
            )
          : Align(
              child: SvgPicture.asset("assets/images/kun-uz-logo.svg"),
              alignment: Alignment.center,
            ),
    );
  }
}
