import 'package:flutter/material.dart';
import 'package:tweenanimation/TweenAnimationBuilder.dart';
import 'package:tweenanimation/newscreen.dart';

void main() {
  runApp(const TweenAnimation());
}

class TweenAnimation extends StatelessWidget {
  const TweenAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TweenAnimationExample(),
    );
  }
}

