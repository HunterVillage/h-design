import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/bundle.dart';

import 'router_model.dart';

List<RouterModel> indexModels = [
  RouterModel(
    id: 'alpha',
    iconData: Icons.format_paint,
    label: '阿尔法',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Bundle(routerModel, AlphaPages),
  ),
];

class Page {
  const Page({this.icon, this.text});

  final IconData icon;
  final String text;
}

const List<Page> AlphaPages = <Page>[
  Page(icon: Icons.weekend, text: 'TRIUMPH'),
  Page(icon: Icons.whatshot, text: 'NOTE'),
  Page(icon: Icons.wb_auto, text: 'SUCCESS'),
  Page(icon: Icons.watch, text: 'OVERSTATE'),
];
