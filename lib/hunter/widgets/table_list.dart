import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

TextStyle headStyle = TextStyle(fontSize: 25, fontFamily: 'FangZhengCuKaiJianTi');
List<TableItem> tableItems = [
  TableItem(columnName: '编号', align: TableAlign.left),
  TableItem(columnName: '名称', align: TableAlign.left),
  TableItem(columnName: '库房', align: TableAlign.left),
  TableItem(columnName: '生产日期', align: TableAlign.left),
  TableItem(columnName: '单价', align: TableAlign.left),
  TableItem(columnName: '金额', align: TableAlign.left),
  TableItem(columnName: '状态', align: TableAlign.left),
  TableItem(columnName: '备注', align: TableAlign.left)
];

class ScrollTable<T> extends StatefulWidget {
  final List<String> columns;
  final List<T> data;

  ScrollTable({this.columns, this.data});

  @override
  State<StatefulWidget> createState() => ScrollTableState();
}

class ScrollTableState extends State<ScrollTable> {
  double _tableWidth = 1230;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: tableItems
                      .map((item) => Container(
                            width: item.width,
                            child: Text(
                              item.columnName,
                              style: headStyle,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              width: _tableWidth,
              child: ListView(
                children: List<Widget>.generate(
                  20,
                  (index) => Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 200,
                        color: index % 2 == 0 ? Colors.orange : Colors.black54,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          color: index % 2 == 0 ? Colors.deepOrangeAccent : Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TableItem {
  final String columnName;
  final double width;
  final String align;
  final String format;

  TableItem({this.columnName, this.width = 150, this.align, this.format});
}

class TableAlign {
  static final String left = 'left';
  static final String right = 'right';
}
