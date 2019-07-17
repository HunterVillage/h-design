import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class FilterView extends StatefulWidget {
  final bool expanded;
  final double expandedHeight;

  FilterView({this.expanded = true, this.expandedHeight = 200.0});

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
    _animation = Tween(begin: 36.0, end: this.widget.expandedHeight).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    this._expanded = this.widget.expanded;
    if (this._expanded) {
      this._controller.forward(from: 36.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _filterForm = Padding(
      padding: EdgeInsets.only(bottom: 46),
      child: ListView(
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
      ),
    );
    Widget _expandButton = Card(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(2))),
      margin: EdgeInsets.all(0),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(bottom: 6, top: 5),
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
        ),
        onTap: () {
          this._expanded ? this._controller.reverse(from: this._animation.value) : this._controller.forward(from: this._animation.value);
          this.setState(() => this._expanded = !this._expanded);
        },
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
    return SizedBox(
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
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
            ),
          ),
          _expandButton,
        ],
      ),
    );
  }
}
