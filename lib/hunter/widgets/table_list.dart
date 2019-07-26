import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

List<TableItem> columns = [
  TableItem(bindId: 'id', columnName: '编号', align: FractionalOffset.centerLeft, width: 80),
  TableItem(bindId: 'name', columnName: '名称'),
  TableItem(bindId: 'warehouse', columnName: '库房'),
  TableItem(bindId: 'date', columnName: '生产日期', width: 300),
  TableItem(bindId: 'price', columnName: '单价', align: FractionalOffset.centerRight),
  TableItem(bindId: 'money', columnName: '金额', align: FractionalOffset.centerRight),
  TableItem(bindId: 'status', columnName: '状态'),
  TableItem(bindId: 'memo', columnName: '备注', align: FractionalOffset.centerLeft, width: 500)
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

  TestModel({
    this.id,
    this.name,
    this.warehouse,
    this.date,
    this.price,
    this.money,
    this.status,
    this.memo,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'warehouse': warehouse,
        'date': date,
        'price': price,
        'money': money,
        'status': status,
        'memo': memo,
      };
}

List<TestModel> modelList = [
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
  TestModel(id: '014', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '015', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '016', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '017', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '018', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '019', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(id: '020', name: '一次性血袋-013', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
];
List dataList = modelList.map((model) => model.toJson()).toList();

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
  void initState() {
    super.initState();
  }

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
                  children: columns
                      .map((column) => Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Theme.of(context).backgroundColor, width: 0.1),
                            ),
                            width: column.width,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Align(
                              alignment: FractionalOffset.center,
                              child: Text(
                                column.columnName,
                                style: headStyle,
                              ),
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
                children: dataList.map((element) {
                  return Row(
                    children: columns.map((column) {
                      String value = element[column.bindId].toString();
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).backgroundColor, width: 0.1),
                        ),
                        height: 40,
                        width: column.width,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Align(
                          alignment: column.align,
                          child: Text(
                            value,
                            style: valueStyle,
                          ),
                        ),
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
  final FractionalOffset align;
  final String format;

  TableItem({
    @required this.bindId,
    this.columnName,
    this.width = 150,
    this.align = FractionalOffset.center,
    this.format,
  });
}

TextStyle headStyle = TextStyle(fontSize: 25, fontFamily: 'FangZhengCuKaiJianTi');
TextStyle valueStyle = TextStyle(fontSize: 17);
