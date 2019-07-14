import 'package:flutter_web/material.dart';
import 'package:h_design/main.dart';

const Color _kFlutterBlue = Color(0xFF003D75);

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
              child: Icon(Icons.menu),
              onTap: () {
                final ThemeData _themeData = isDark
                    ? ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.light)
                    : ThemeData(primarySwatch: Colors.blueGrey, brightness: Brightness.dark);
                this.widget.themeDataSwitch(_themeData);
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
            color: isDark ? Colors.white : _kFlutterBlue,
          ),
        ),
      ),
    );
  }
}
