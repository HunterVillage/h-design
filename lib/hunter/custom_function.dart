import 'package:flutter_web/material.dart';

import 'router_model.dart';

typedef ThemeDataSwitch = void Function(ThemeData themeData);
typedef RouterHandler = Widget Function(RouterModel routerModel);
typedef ActionBuild = Widget Function(BuildContext context, {ThemeDataSwitch themeDataSwitch});
