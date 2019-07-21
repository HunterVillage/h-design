import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';

class MenuCard extends StatelessWidget {
  final RouterModel model;
  final double height;
  final double width;

  MenuCard({this.model, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              flex: 9,
              child: Container(
                color: model.iconColor ?? Theme.of(context).iconTheme.color,
                height: height,
                child: Hero(
                  tag: model.id,
                  child: Icon(
                    model.iconData,
                    color: Colors.white,
                    size: 55,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 17,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          model.title,
                          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, fontFamily: 'Happy'),
                        ),
                      ),
                    ),
                    Divider(
                      height: 0.5,
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            model.subTitle ?? '',
                            style: TextStyle(fontSize: 20, color: Colors.grey, fontFamily: 'SongTi'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
