import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';
import 'package:h_design/hunter/widgets/filter_view.dart';
import 'package:h_design/hunter/widgets/table_list.dart';

List<TableColumn> columns = [
  TableColumn(bindId: 'name', columnName: '名称', width: 300),
  TableColumn(bindId: 'warehouse', columnName: '库房', width: 200),
  TableColumn(bindId: 'date', columnName: '生产日期', width: 300),
  TableColumn(bindId: 'price', columnName: '单价', align: FractionalOffset.centerRight),
  TableColumn(bindId: 'money', columnName: '金额', align: FractionalOffset.centerRight),
  TableColumn(bindId: 'status', columnName: '状态'),
  TableColumn(bindId: 'memo', columnName: '备注', align: FractionalOffset.centerLeft, width: 500)
];

class TestModel {
  final String name;
  final String warehouse;
  final DateTime date;
  final double price;
  final double money;
  final String status;
  final String memo;

  TestModel({
    this.name,
    this.warehouse,
    this.date,
    this.price,
    this.money,
    this.status,
    this.memo,
  });

  Map<String, dynamic> toJson() => {
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
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
  TestModel(name: '一次性血袋-001', warehouse: '中心库房', date: DateTime.now(), price: 200.0, money: 2000.0, status: '入库', memo: '备注一下'),
];
List dataList = modelList.map((model) => model.toJson()).toList();

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FilterView(),
        Expanded(
          child: ScrollTable(
            dataList: dataList,
            columns: columns,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 460,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '第1页/共1页  ',
                    style: TextStyle(fontSize: 20, fontFamily: 'FangZhengCuKaiJianTi'),
                  ),
                  Text(
                    '1-20条/共20条',
                    style: TextStyle(fontSize: 20, fontFamily: 'FangZhengCuKaiJianTi'),
                  ),
                  IconButton(
                    icon: Icon(Icons.navigate_before),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
