import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/router_pool.dart';
import 'package:h_design/hunter/actions.dart';
import 'package:h_design/hunter/widgets/menul_card.dart';

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
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 30),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 660,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2.2,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final RouterModel model = indexModels[index];
                  return GestureDetector(
                    child: MenuCard(model: model, height: 660 / 1.7, width: 660),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => model.routerHandler(model))),
                  );
                },
                childCount: indexModels.length,
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF202124) : Colors.white,
      appBar: appBar,
      body: body,
    );
  }
}
