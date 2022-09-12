import 'package:flutter/material.dart';
import './adress.dart';
import './elevated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _adress = ['IET lko', 'Ramnujan hostel', 'room number-309'];

  var _index = 0;
  void restart() {
    setState(() {
      _index = 0;
    });
  }

  void _press() {
    setState(() {
      _index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is my Adress!"),
        ),
        body: _index < 3
            ? Column(
                children: [
                  adress(_adress[_index]),
                  elevated(_press),
                ],
              )
            : Center(
                child: ElevatedButton(
                  onPressed: restart,
                  child: const Text("Read Again!"),
                ),
              ),
      ),
    );
  }
}
