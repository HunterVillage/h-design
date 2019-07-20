import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/router_model.dart';

class MenuCard extends StatelessWidget {
  final RouterModel model;
  final double height;
  final double width;

  MenuCard({this.model, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          width: height,
          height: width,
          padding: EdgeInsets.symmetric(vertical: width * 0.15, horizontal: height * 0.08),
          child: Material(
            elevation: 6,
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: width * 0.10, horizontal: height * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FittedBox(
                    child: Text(
                      model.title,
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      model.subTitle ?? '',
                      style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal),
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: height * 0.03,
          left: width * 0.26,
          child: Card(
            color: model.iconColor ?? Theme.of(context).primaryColor,
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: width * 0.05, horizontal: height * 0.1),
              child: Hero(
                tag: model.id,
                child: Icon(
                  model.iconData,
                  color: Colors.white,
                  size: width < height ? width * 0.15 : height * 0.10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
