import 'package:flutter_web/material.dart';

import 'custom_function.dart';

class RouterModel {
  final String id;
  final IconData iconData;
  final String label;
  final int sort;
  final RouterHandler routerHandler;

  RouterModel({
    @required this.id,
    @required this.iconData,
    @required this.label,
    @required this.sort,
    @required this.routerHandler,
  });
}
