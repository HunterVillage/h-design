import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/router_pool.dart';
import 'package:h_design/hunter/widgets/actions.dart';
import 'package:h_design/main.dart';

class Bundle extends StatefulWidget {
  final RouterModel model;
  final List<Page> pages;

  Bundle(this.model, this.pages);

  @override
  State<StatefulWidget> createState() => BundleState();
}

class BundleState extends State<Bundle> with SingleTickerProviderStateMixin {
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
        title: Text(this.widget.model.label),
        actions: <Widget>[
          homeAction(context),
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          tabs: this.widget.pages.map<Tab>((Page page) {
            return Tab(text: page.text, icon: Icon(page.icon));
          }).toList(),
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: this.widget.pages.map<Widget>((Page page) {
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
