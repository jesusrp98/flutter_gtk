import 'package:flutter/material.dart';
import 'package:flutter_gtk/flutter_gtk.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

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
        canvasColor: AdwaitaLightColors.canvas,
        fontFamily: 'Cantarell',
      ),
      darkTheme: ThemeData(
        canvasColor: AdwaitaDarkColors.canvas,
        brightness: Brightness.dark,
        fontFamily: 'Cantarell',
      ),
      themeMode: ThemeMode.dark,
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
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onPanStart: (_) => appWindow.startDragging(),
            child: AdwaitaHeaderBar(
              onMinimize: () => appWindow.minimize(),
              onMaximize: () => appWindow.maximizeOrRestore(),
              onClose: () => appWindow.close(),
              leading: AdwaitaHeaderButton(
                icon: Icons.add,
                onTap: () => null,
              ),
              center: AdwaitaViewSwitcher(
                tabs: [
                  ViewSwitcherData(
                    icon: Icons.language,
                    title: 'World',
                  ),
                  ViewSwitcherData(
                    icon: Icons.alarm,
                    title: 'Alarms',
                  ),
                  ViewSwitcherData(
                    icon: Icons.timer,
                    title: 'Stopwatch',
                  ),
                  ViewSwitcherData(
                    icon: Icons.hourglass_empty,
                    title: 'Timer',
                  ),
                ],
              ),
              trailling: AdwaitaHeaderButton(
                icon: Icons.menu,
                onTap: () => null,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.language,
                    color: Color(0xff686867),
                    size: 150,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 18,
                      ),
                      shape: StadiumBorder(),
                      backgroundColor: Color(0xff15539e),
                      primary: Colors.white,
                      textStyle:
                          Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                    ),
                    child: Text('Add World Clock'),
                    onPressed: () => null,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
