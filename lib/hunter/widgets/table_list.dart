//import 'dart:mirrors';

import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

TextStyle headStyle = TextStyle(fontSize: 25, fontFamily: 'FangZhengCuKaiJianTi');
List<TableItem> columns = [
  TableItem(bindId: 'id', columnName: '编号', align: TableAlign.left),
  TableItem(bindId: 'name', columnName: '名称', align: TableAlign.left),
  TableItem(bindId: 'warehouse', columnName: '库房', align: TableAlign.left),
  TableItem(bindId: 'date', columnName: '生产日期', align: TableAlign.left),
  TableItem(bindId: 'price', columnName: '单价', align: TableAlign.right),
  TableItem(bindId: 'money', columnName: '金额', align: TableAlign.right),
  TableItem(bindId: 'status', columnName: '状态', align: TableAlign.left),
  TableItem(bindId: 'memo', columnName: '备注', align: TableAlign.left)
];

class TestModel {
  final String id;
  final String name;
  final String warehouse;
  final DateTime date;
  final double price;
  final double money;
  final String status;
  final String memo;

  TestModel({this.id, this.name, this.warehouse, this.date, this.price, this.money, this.status, this.memo});
}

List<TestModel> dataList = [
  TestModel(id: '001', name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '002', name: '一次性血袋-002', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '003', name: '一次性血袋-003', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '004', name: '一次性血袋-004', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '005', name: '一次性血袋-005', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '006', name: '一次性血袋-006', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '007', name: '一次性血袋-007', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '008', name: '一次性血袋-008', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '009', name: '一次性血袋-009', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '010', name: '一次性血袋-010', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '011', name: '一次性血袋-011', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '012', name: '一次性血袋-012', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '013', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
];

class ScrollTable<T> extends StatefulWidget {
  final List<TableItem> columns;
  final List<T> dataList;

  ScrollTable({this.columns, this.dataList});

  @override
  State<StatefulWidget> createState() => ScrollTableState();
}

class ScrollTableState extends State<ScrollTable> {
  double _tableWidth = columns.map((item) => item.width).reduce((value, element) => value + element);

  @override
  Widget build(BuildContext context) {
//    InstanceMirror myClassInstanceMirror = reflect(dataList[0]);
//    ClassMirror MyClassMirror = myClassInstanceMirror.type;
//    for (var k in MyClassMirror.declarations.keys) {
//      print(MirrorSystem.getName(k));
//    }
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
                  children: columns
                      .map((column) => Container(
                            width: column.width,
                            child: Text(
                              column.columnName,
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
                // TODO
                children: dataList.map((element) {
                  return Row(
                    children: columns.map((column) {
                      return Container(
                        height: 40,
                        width: column.width,
                        child: Text(element.name),
                      );
                    }).toList(),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TableItem {
  final String bindId;
  final String columnName;
  final double width;
  final String align;
  final String format;

  TableItem({@required this.bindId, this.columnName, this.width = 150, this.align, this.format});
}

class TableAlign {
  static final String left = 'left';
  static final String right = 'right';
}
