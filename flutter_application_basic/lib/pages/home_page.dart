import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  Color color = Colors.blue;
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: color,
                    border: Border.all(color: Colors.black, width: 5.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: color,
                    border: Border.all(color: Colors.black, width: 5.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
                style: style,
                onPressed: () {
                  setState(() {
                    counter++;
                    if (counter % 2 == 0) {
                      color = Colors.amberAccent;
                    } else {
                      color = Colors.blue;
                    }
                  });
                },
                child: const Text('Поменять цвет')),
          ),
        ],
      ),
    );
  }
}
