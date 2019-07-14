import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

import 'custom_function.dart';
import 'custom_theme.dart';

class SettingsMenu extends StatefulWidget {
  final ThemeDataSwitch themeDataSwitch;

  SettingsMenu({Key key, @required this.themeDataSwitch}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SettingMenuState();
}

class SettingMenuState extends State<SettingsMenu> {
  ThemeData _themeData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);
    bool _isDark = _themeData.brightness == Brightness.dark;
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 300,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: _themeData.primaryColor,
            leading: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
          backgroundColor: _themeData.backgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.brightness_6),
                    Text(
                      '夜间模式${_isDark ? '已' : '未'}开启',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: _isDark,
                      onChanged: (bool value) {
                        _themeData = value ? darkTheme : lightTheme;
                        this.widget.themeDataSwitch(_themeData);
                      },
                      activeColor: darkTheme.primaryColor,
                      activeTrackColor: darkTheme.primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
