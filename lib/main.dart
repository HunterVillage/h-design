import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

typedef ThemeColorSwitch = void Function(Color color);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color _themeColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H DESIGN',
      theme: ThemeData(
        primarySwatch: this._themeColor,
      ),
      home: MyHomePage(
        title: 'H Design Home Page',
        themeColorSwitch: (color) {
          this.setState(() => this._themeColor = color);
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.themeColorSwitch}) : super(key: key);

  final String title;
  final ThemeColorSwitch themeColorSwitch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.menu),
          onTap: () {
            print('menu');
          },
        ),
        title: Text(title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: PopupMenuButton<Color>(
              tooltip: 'Theme',
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<Color>>[
                  PopupMenuItem<Color>(
                    value: Colors.blue,
                    child: Text(
                      'blue',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  PopupMenuItem<Color>(
                    value: Colors.deepOrange,
                    child: Text(
                      'deepOrange',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                ];
              },
              onSelected: (color) => this.themeColorSwitch(color),
              icon: Icon(Icons.format_paint),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
          ],
        ),
      ),
    );
  }
}
