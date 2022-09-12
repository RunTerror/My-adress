import 'package:flutter/material.dart';

class elevated extends StatelessWidget {
  final VoidCallback pressing;
  elevated(this.pressing);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        
      ),
      onPressed: pressing,
    
      child:const Text(
        "Click",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
