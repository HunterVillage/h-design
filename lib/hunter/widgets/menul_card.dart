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
      margin: EdgeInsets.symmetric(vertical: height * 0.1, horizontal: width * 0.055),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.all(Radius.circular(width * 0.03)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              color: model.iconColor ?? Theme.of(context).iconTheme.color,
              width: width * 0.3,
              height: height,
              child: Hero(
                tag: model.id,
                child: Icon(
                  model.iconData,
                  color: Colors.white,
                  size: width * 0.2,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: height * 0.1),
              width: width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: width * 0.1),
                    child: Text(
                      model.title,
                      style: TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                    ),
                  ),
                  Spacer(),
                  Divider(),
                  SizedBox(
                    height: height * 0.2,
                    width: width * 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.02, left: height * 0.05),
                      child: Text(
                        model.subTitle ?? '',
                        style: TextStyle(fontSize: width * 0.04, color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
