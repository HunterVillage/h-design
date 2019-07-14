import 'package:flutter_web/material.dart';

class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}

class CustomPopup extends StatelessWidget {
  final Widget child;
  final double left;
  final double top;
  final double right;
  final double bottom;

  CustomPopup({
    @required this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
            ),
            Positioned(
              child: GestureDetector(
                child: LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: 300,
                  child: this.child,
                ),

                ///  this rear reject pop
                onTap: () {},
              ),
              left: this.left,
              top: this.top,
              right: this.right,
              bottom: this.bottom,
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
