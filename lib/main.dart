import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/custom_theme.dart';

import 'hunter/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeData _themeData;

  @override
  void initState() {
    super.initState();
    this._themeData = darkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H-DESIGN',
      theme: this._themeData,
      home: HomePage(
        title: 'H Design Home Page',
        themeDataSwitch: (themeData) {
          this.setState(() => this._themeData = themeData);
        },
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(
              title: 'H Design Home Page',
              themeDataSwitch: (themeData) {
                this.setState(() => this._themeData = themeData);
              },
            ),
      },
    );
  }
}
