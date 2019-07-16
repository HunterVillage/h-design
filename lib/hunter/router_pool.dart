import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/bundle_group.dart';

import 'router_model.dart';

List<RouterModel> indexModels = [
  RouterModel(
    id: 'alpha',
    iconData: Icons.format_paint,
    label: '阿尔法',
    sort: 0,
    routerHandler: (RouterModel routerModel) => BundleGroup(routerModel, AlphaModels),
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

List<RouterModel> AlphaModels = <RouterModel>[
  RouterModel(
    id: 'weekend',
    iconData: Icons.weekend,
    label: 'WEEKEND',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Weekend-Router'),
    ),
  ),
  RouterModel(
    id: 'wb_auto',
    iconData: Icons.wb_auto,
    label: 'WB_AUTO',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Wb_auto-Router'),
    ),
  ),
  RouterModel(
    id: 'whatshot',
    iconData: Icons.whatshot,
    label: 'WHATSHOT',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Whatshot-Router'),
    ),
  ),
  RouterModel(
    id: 'watch',
    iconData: Icons.watch,
    label: 'WATCH',
    sort: 0,
    routerHandler: (RouterModel routerModel) => Center(
      child: Text('Watch-Router'),
    ),
  ),
];
