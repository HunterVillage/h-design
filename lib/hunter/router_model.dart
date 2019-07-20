import 'package:flutter_web/material.dart';

import 'custom_function.dart';

class RouterModel {
  final String id;
  final IconData iconData;
  final Color iconColor;
  final String title;
  final String subTitle;
  final int sort;
  final RouterHandler routerHandler;

  RouterModel({
    @required this.id,
    @required this.iconData,
    this.iconColor,
    @required this.title,
    this.subTitle,
    @required this.sort,
    @required this.routerHandler,
  });
}
