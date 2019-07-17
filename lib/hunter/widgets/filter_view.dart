import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_ui/ui.dart' as prefix0;

class FilterView extends StatefulWidget {
  final bool expanded;
  final double expandedHeight;

  FilterView({this.expanded = true, this.expandedHeight = 180.0});

  @override
  State<StatefulWidget> createState() => FilterViewState();
}

class FilterViewState extends State<FilterView> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  bool _expanded;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    _animation = Tween(begin: 35.0, end: this.widget.expandedHeight).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    this._expanded = this.widget.expanded;
    if (this._expanded) {
      this._controller.forward(from: 35.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _filterForm = ListView(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: 150,
                height: 30,
                child: TextField(
                  enabled: true,
                  decoration: const InputDecoration(
                    labelText: '编号',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
    Widget _expandButton = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: prefix0.Radius.circular(7))),
        margin: EdgeInsets.all(0),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '筛选',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(width: 10),
              Icon(
                this._expanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          onTap: () {
            this._expanded ? this._controller.reverse(from: this._animation.value) : this._controller.forward(from: this._animation.value);
            this.setState(() => this._expanded = !this._expanded);
          },
        ),
      ),
    );
    Widget _filterFormButton = Positioned(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          RaisedButton.icon(
            onPressed: () {},
            color: Theme.of(context).backgroundColor,
            textTheme: ButtonTextTheme.primary,
            label: Text('重置'),
            icon: Icon(Icons.replay),
          ),
          SizedBox(width: 10),
          RaisedButton.icon(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            textTheme: ButtonTextTheme.primary,
            label: const Text('查询'),
            icon: Icon(Icons.search),
          )
        ],
      ),
      bottom: 0,
      right: 10,
    );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: this._animation.value,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    _filterForm,
                    _filterFormButton,
                  ],
                ),
                color: Theme.of(context).bottomAppBarColor,
              ),
            ),
            _expandButton,
          ],
        ),
      ),
    );
  }
}
