import 'package:flutter_web/material.dart';

import 'router_model.dart';

List<RouterModel> indexModels = [
  RouterModel(
    id: 'alpha',
    icon: Icon(
      Icons.format_paint,
      size: 55,
    ),
    label: '阿尔法',
    sort: 0,
    target: Center(
      child: Text('Alpha-Router'),
    ),
  ),
  RouterModel(
    id: 'bata',
    icon: Icon(
      Icons.child_friendly,
      size: 55,
    ),
    label: '贝塔',
    sort: 0,
    target: Center(
      child: Text('Bata-Router'),
    ),
  ),
  RouterModel(
    id: 'delta',
    icon: Icon(
      Icons.vpn_lock,
      size: 55,
    ),
    label: '德尔塔',
    sort: 0,
    target: Center(
      child: Text('Delta-Router'),
    ),
  ),
  RouterModel(
    id: 'epsilon',
    icon: Icon(
      Icons.track_changes,
      size: 55,
    ),
    label: '伊普斯龙',
    sort: 0,
    target: Center(
      child: Text('Epsilon-Router'),
    ),
  ),
];
