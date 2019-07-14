import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/custom_popup.dart';
import 'package:h_design/hunter/settings_menu.dart';

import 'custom_function.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.themeDataSwitch}) : super(key: key);

  final String title;
  final ThemeDataSwitch themeDataSwitch;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: isDark ? const Color(0xFF202124) : Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('H-Design'),
        actions: <Widget>[
          Container(
            width: 80,
            child: InkWell(
              child: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  PopRoute(
                    child: CustomPopup(
                      right: 0,
                      top: 0,
                      child: SettingsMenu(
                        themeDataSwitch: this.widget.themeDataSwitch,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Icon(
            Icons.adb,
            size: 54.0,
          ),
        ),
      ),
    );
  }
}
