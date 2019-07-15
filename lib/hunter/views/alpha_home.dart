import 'package:flutter_web/material.dart';

import '../router_model.dart';

class Alpha extends StatelessWidget {
  final RouterModel model;

  Alpha(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: model.id,
          child: Icon(model.iconData),
        ),
        title: Text(model.label),
      ),
      body: Container(),
    );
  }
}
