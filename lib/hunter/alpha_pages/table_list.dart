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
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Wrap(
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 30,
                child: TextField(
                  enabled: true,
                  decoration: const InputDecoration(
                    labelText: '编号',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
