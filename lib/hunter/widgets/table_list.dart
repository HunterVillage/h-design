import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

TableColumn rowNumberColumn = TableColumn(bindId: 'Row-Number', columnName: '', align: FractionalOffset.centerRight, width: 80);

class ScrollTable extends StatelessWidget {
  final List<TableColumn> columns;
  final List<Map> dataList;

  ScrollTable({@required this.columns, @required this.dataList});

  @override
  Widget build(BuildContext context) {
    if (!this.columns.contains(rowNumberColumn)) {
      this.columns.insert(0, rowNumberColumn);
      for (int index = 1; index <= dataList.length; index++) {
        Map<String, dynamic> row = dataList[index - 1];
        if (row.containsKey('Row-Number')) break;
        row.putIfAbsent('Row-Number', () => index);
      }
    }

    double tableWidth = this.columns.map((item) => item.width).reduce((value, element) => value + element);

    return Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: this
                        .columns
                        .map((column) => Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: Divider.createBorderSide(context, width: 1.0)),
                              ),
                              width: column.width,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Align(
                                alignment: column.align,
                                child: Text(
                                  column.columnName,
                                  style: headStyle,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Divider(),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: tableWidth,
                child: ListView(
                  children: this.dataList.map((element) {
                    return Row(
                      children: this.columns.map((column) {
                        String value = element[column.bindId].toString();
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: Divider.createBorderSide(context, width: 1.0)),
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
      ),
    );
  }
}

class TableColumn {
  final String bindId;
  final String columnName;
  final double width;
  final FractionalOffset align;
  final String format;

  TableColumn({
    @required this.bindId,
    this.columnName,
    this.width = 150,
    this.align = FractionalOffset.center,
    this.format,
  });
}

TextStyle headStyle = TextStyle(fontSize: 26, fontFamily: 'FangZhengCuKaiJianTi');
TextStyle valueStyle = TextStyle(fontSize: 16, fontFamily: 'GoogleSans', fontWeight: FontWeight.w600);
