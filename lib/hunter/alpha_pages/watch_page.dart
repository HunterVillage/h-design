import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';

class WatchPage extends StatefulWidget {
  final RouterModel routerModel;

  const WatchPage({Key key, this.routerModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WatchPageState();
}

class WatchPageState extends State<WatchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ObjectKey(this.widget.routerModel.iconData),
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: Center(
          child: Icon(
            this.widget.routerModel.iconData,
            size: 128.0,
            semanticLabel: 'Placeholder for ${this.widget.routerModel.label} tab',
          ),
        ),
      ),
    );
  }
}
