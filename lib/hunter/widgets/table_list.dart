import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

TextStyle headStyle = TextStyle(fontSize: 25, fontFamily: 'FangZhengCuKaiJianTi');
TextStyle tailStyle = TextStyle(fontSize: 25, fontFamily: 'FangZhengCuKaiJianTi');

class TableList<T> extends StatefulWidget {
  final List<String> columns;
  final List<T> data;

  TableList({this.columns, this.data});

  @override
  State<StatefulWidget> createState() => TableListState();
}

class TableListState extends State<TableList> {
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
                  children: <Widget>[
                    Container(
                      width: 130,
                      child: Text(
                        '编号',
                        style: headStyle,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        '名称',
                        style: headStyle,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        '部门',
                        style: headStyle,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        '库房',
                        style: headStyle,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        '生产日期',
                        style: headStyle,
                      ),
                    ),
                    Container(
                      width: 500,
                      child: Text(
                        '单价',
                        style: headStyle,
                      ),
                    )
                  ],
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
