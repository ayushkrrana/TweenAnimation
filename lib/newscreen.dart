import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> with SingleTickerProviderStateMixin{
  late Animation animation; // to use the tween animation We have to use the Animation
  late Animation colorAnimation;// I created this variable to change the color of the container
  late AnimationController animationController;// and also we have to use the AnimationController

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 4));// the value of tween animation which is 0 to 500 reach in 6 seconds
    animation=Tween(begin: 0.0,end: 500.0).animate(animationController); // tween takes the positional arguments
    colorAnimation=ColorTween(begin: Colors.pink,end: Colors.orangeAccent).animate(animationController); // here we have to use the ColorTween when we have to declare colors
    animationController.addListener((){//When the value changes, the function inside addListener() is called automatically.
      //debugPrint(animation.value);// debugPrint is used
      setState(() {// set state is used to show the new updated widget tree
        // nothing here, but this tells Flutter to rebuild
      });
    });
    animationController.forward();// it is used to start the animation controller which increases the value of the seconds of 4 seconds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('T W E E N A N I M A T I O N'),),
        body: Center(
          child: Container(
            width: animation.value,
            height: animation.value,// animation. value is the value which is increasing from 0 to 200 in the 4 seconds
            color: colorAnimation.value,

          ),
        )
    );
  }
}

