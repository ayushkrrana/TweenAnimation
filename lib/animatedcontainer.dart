import 'package:flutter/material.dart';

class AnimatedcontainerExample extends StatefulWidget {
  const AnimatedcontainerExample({super.key});

  @override
  State<AnimatedcontainerExample> createState() => _AnimatedcontainerExampleState();
}

class _AnimatedcontainerExampleState extends State<AnimatedcontainerExample> {
  double heightbox=100;
  double widthbox=100;
  var BoxColor= Colors.blue;

  void _expandBox(){
    setState(() {
      heightbox=300;
      widthbox=100;
    });
  }
  void _changedboxcolor(){
    setState(() {
      BoxColor=Colors.pink;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changedboxcolor,
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: heightbox,
            width: widthbox,
            color: BoxColor
          ),
        ),
      ),
    );
  }
}
