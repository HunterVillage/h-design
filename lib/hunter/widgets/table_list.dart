import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class TableList<T> extends StatefulWidget {
  final List<String> columns;
  final List<T> data;

  TableList({this.columns, this.data});

  @override
  State<StatefulWidget> createState() => TableListState();
}

class TableListState extends State<TableList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
