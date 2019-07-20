import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/actions.dart';

class TabPage extends StatefulWidget {
  final RouterModel model;
  final List<RouterModel> pages;

  TabPage(this.model, this.pages);

  @override
  State<StatefulWidget> createState() => TabPageState();
}

class TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: this.widget.pages.length);
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
        title: Text(this.widget.model.title),
        actions: <Widget>[
          homeAction(context),
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          tabs: this.widget.pages.map<Tab>((RouterModel routerModel) {
            return Tab(text: routerModel.title, icon: Icon(routerModel.iconData));
          }).toList(),
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: this.widget.pages.map<Widget>((RouterModel routerModel) {
            return SafeArea(
              top: false,
              bottom: false,
              child: routerModel.routerHandler(routerModel),
            );
          }).toList()),
    );
    ;
  }
}
