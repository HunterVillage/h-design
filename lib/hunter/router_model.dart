import 'package:flutter_web/material.dart';

class RouterModel {
  final String id;
  final Icon icon;
  final String label;
  final int sort;
  final Widget target;

  RouterModel({
    @required this.id,
    @required this.icon,
    @required this.label,
    @required this.sort,
    @required this.target,
  });
}
