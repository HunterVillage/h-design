import 'package:flutter_web/material.dart';

import '../router_model.dart';

class Alpha extends StatelessWidget {
  final RouterModel model;

  Alpha(this.model);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: model.id,
      child: GestureDetector(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Card(
            child: Column(
              children: <Widget>[Expanded(flex: 4, child: model.icon), Expanded(flex: 1, child: Text(model.label))],
            ),
          ),
        ),
      ),
    );
  }
}
