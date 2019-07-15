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
  RouterModel(
    id: 'bata',
    iconData: Icons.child_friendly,
    label: '贝塔',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Bata-Router'),
    ),
  ),
  RouterModel(
    id: 'delta',
    iconData: Icons.vpn_lock,
    label: '德尔塔',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Delta-Router'),
    ),
  ),
  RouterModel(
    id: 'epsilon',
    iconData: Icons.track_changes,
    label: '伊普斯龙',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Epsilon-Router'),
    ),
  ),
];

class Page {
  const Page({this.icon, this.text});

  final IconData icon;
  final String text;
}

const List<Page> AlphaPages = <Page>[
  Page(icon: Icons.grade, text: 'TRIUMPH'),
  Page(icon: Icons.playlist_add, text: 'NOTE'),
  Page(icon: Icons.check_circle, text: 'SUCCESS'),
  Page(icon: Icons.question_answer, text: 'OVERSTATE'),
  Page(icon: Icons.sentiment_very_satisfied, text: 'SATISFACTION'),
  Page(icon: Icons.camera, text: 'APERTURE'),
  Page(icon: Icons.assignment_late, text: 'WE MUST'),
  Page(icon: Icons.assignment_turned_in, text: 'WE CAN'),
  Page(icon: Icons.group, text: 'ALL'),
  Page(icon: Icons.block, text: 'EXCEPT'),
  Page(icon: Icons.sentiment_very_dissatisfied, text: 'CRYING'),
  Page(icon: Icons.error, text: 'MISTAKE'),
  Page(icon: Icons.loop, text: 'TRYING'),
  Page(icon: Icons.cake, text: 'CAKE'),
];
