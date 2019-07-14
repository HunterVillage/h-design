import 'package:flutter_web/material.dart';

import 'hunter/home.dart';

void main() => runApp(MyApp());

typedef ThemeDataSwitch = void Function(ThemeData themeData);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeData _themeData = ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H DESIGN',
      theme: _themeData,
      home: HomePage(
        title: 'H Design Home Page',
        themeDataSwitch: (themeData) {
          this.setState(() => this._themeData = themeData);
        },
      ),
    );
  }
}
