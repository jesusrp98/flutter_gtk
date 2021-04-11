import 'package:flutter/material.dart';
import 'package:flutter_gtk/flutter_gtk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xFFF8F7F7),
        fontFamily: 'Cantarell',
      ),
      themeMode: ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AdwaitaHeaderBar(
            leading: AdwaitaHeaderButton(
              icon: Icons.refresh,
              onTap: () => null,
            ),
            center: AdwaitaViewSwitcher(
              tabs: [
                ViewSwitcherData(
                  icon: Icons.article_outlined,
                  title: 'My List',
                ),
                ViewSwitcherData(
                  icon: Icons.star_outline,
                  title: 'Favorites',
                ),
                ViewSwitcherData(
                  icon: Icons.folder_open,
                  title: 'Archived',
                ),
              ],
            ),
            trailling: AdwaitaHeaderButton(
              icon: Icons.menu,
              onTap: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
