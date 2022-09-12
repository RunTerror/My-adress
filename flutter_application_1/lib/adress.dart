import 'package:flutter/material.dart';

class adress extends StatelessWidget {
  final String mark;
  adress(this.mark);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        mark,
        style: TextStyle(fontSize: 40, color: Colors.black,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
