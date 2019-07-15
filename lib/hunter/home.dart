import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/custom_popup.dart';
import 'package:h_design/hunter/router_pool.dart';
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
    Widget appBar = AppBar(
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
                    child: SettingsMenu(themeDataSwitch: this.widget.themeDataSwitch),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
    Widget body = SafeArea(
      bottom: false,
      child: Wrap(
        children: indexModels.map((model) {
          return Hero(
            tag: model.id,
            child: GestureDetector(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3333,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                  child: Column(
                    children: <Widget>[Expanded(flex: 4, child: model.icon), Expanded(flex: 1, child: Text(model.label))],
                  ),
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => model.routerHandler(model))),
            ),
          );
        }).toList(),
      ),
    );
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: isDark ? const Color(0xFF202124) : Colors.white,
      appBar: appBar,
      body: body,
    );
  }
}
