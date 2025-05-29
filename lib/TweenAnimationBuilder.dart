import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({super.key});

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  double begin = 100;
  double end=200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation Builder"),
      ),
      body: TweenAnimationBuilder(
        duration: Duration(milliseconds: 800),
        tween: Tween<double>(begin: begin, end: end),
        builder: (_, value, child) => Center(
          child: Image.asset(
            'assets/photos/lion.jpg',
            height: value,
          ),
        ),
        onEnd: () {
          setState(() {
            double temp=begin;
            begin=end;
            end=temp;
          });
        },
      ),
    );
  }
}
