import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/views/alpha_home.dart';

import 'router_model.dart';

List<RouterModel> indexModels = [
  RouterModel(
    id: 'alpha',
    iconData: Icons.format_paint,
    label: '阿尔法',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Alpha(routerModel),
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
