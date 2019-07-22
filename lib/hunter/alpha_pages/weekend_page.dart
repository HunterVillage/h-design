import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/widgets/filter_view.dart';
import 'package:h_design/hunter/widgets/table_list.dart';

class WeekendPage extends StatefulWidget {
  final RouterModel routerModel;

  const WeekendPage({Key key, this.routerModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WeekendPageState();
}

class WeekendPageState extends State<WeekendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FilterView(),
        Expanded(
          child: TableList(),
//          child: SingleChildScrollView(
//            scrollDirection: Axis.horizontal,
//            child: TableList(),
//          ),
        ),
      ],
    );
  }
}
