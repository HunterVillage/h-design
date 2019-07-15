import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/widgets/actions.dart';
import 'package:h_design/main.dart';


class _Page {
  const _Page({this.icon, this.text});

  final IconData icon;
  final String text;
}

const List<_Page> _allPages = <_Page>[
  _Page(icon: Icons.grade, text: 'TRIUMPH'),
  _Page(icon: Icons.playlist_add, text: 'NOTE'),
  _Page(icon: Icons.check_circle, text: 'SUCCESS'),
  _Page(icon: Icons.question_answer, text: 'OVERSTATE'),
  _Page(icon: Icons.sentiment_very_satisfied, text: 'SATISFACTION'),
  _Page(icon: Icons.camera, text: 'APERTURE'),
  _Page(icon: Icons.assignment_late, text: 'WE MUST'),
  _Page(icon: Icons.assignment_turned_in, text: 'WE CAN'),
  _Page(icon: Icons.group, text: 'ALL'),
  _Page(icon: Icons.block, text: 'EXCEPT'),
  _Page(icon: Icons.sentiment_very_dissatisfied, text: 'CRYING'),
  _Page(icon: Icons.error, text: 'MISTAKE'),
  _Page(icon: Icons.loop, text: 'TRYING'),
  _Page(icon: Icons.cake, text: 'CAKE'),
];

class Alpha extends StatefulWidget {
  final RouterModel model;

  Alpha(this.model);

  @override
  State<StatefulWidget> createState() => AlphaState();
}

class AlphaState extends State<Alpha> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: _allPages.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: this.widget.model.id,
          child: Icon(this.widget.model.iconData),
        ),
        title: Text(this.widget.model.label),
        actions: <Widget>[
          homeAction(context, targetPage: MyApp()),
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          tabs: _allPages.map<Tab>((_Page page) {
            return Tab(text: page.text, icon: Icon(page.icon));
            ;
          }).toList(),
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: _allPages.map<Widget>((_Page page) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Container(
                key: ObjectKey(page.icon),
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  child: Center(
                    child: Icon(
                      page.icon,
                      size: 128.0,
                      semanticLabel: 'Placeholder for ${page.text} tab',
                    ),
                  ),
                ),
              ),
            );
          }).toList()),
    );
    ;
  }
}
