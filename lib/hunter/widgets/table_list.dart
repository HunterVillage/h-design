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
    return Column(
      children: List<Widget>.generate(
        20,
        (index) => Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.purpleAccent,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.tealAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.teal,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.orange,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.deepPurpleAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: (index % 2) == 0 ? Colors.blue : Colors.deepOrangeAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
