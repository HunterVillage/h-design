import 'package:flutter_web/material.dart';

import 'custom_function.dart';

class RouterModel {
  final String id;
  final Icon icon;
  final String label;
  final int sort;
  final RouterHandler routerHandler;

  RouterModel({
    @required this.id,
    @required this.icon,
    @required this.label,
    @required this.sort,
    @required this.routerHandler,
  });
}
