import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_pool.dart';
import 'package:h_design/hunter/actions.dart';

import 'custom_function.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.themeDataSwitch}) : super(key: key);

  final String title;
  final ThemeDataSwitch themeDataSwitch;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
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
        settingAction(context, themeDataSwitch: this.widget.themeDataSwitch),
      ],
    );
    Widget body = SafeArea(
      bottom: false,
      child: Wrap(
        children: indexModels.map((model) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.3333,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Hero(
              tag: model.id,
              child: GestureDetector(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(flex: 4, child: Icon(model.iconData, size: 55)),
                      Expanded(flex: 1, child: Text(model.label)),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => model.routerHandler(model))),
              ),
            ),
          );
        }).toList(),
      ),
    );
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF202124) : Colors.white,
      appBar: appBar,
      body: body,
    );
  }
}
