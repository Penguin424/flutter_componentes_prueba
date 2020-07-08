import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink[200];
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: _color,
           title: Text('Animaciones del container'),
           centerTitle: true,
         ),
         body: Center(
           child: AnimatedContainer(
             width: _width,
             height: _height,
             decoration: BoxDecoration(
               borderRadius: _borderRadius,
               color: _color
             ),
             duration: Duration(seconds: 1),
             curve: Curves.fastOutSlowIn,
           ),
         ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: _color,
          onPressed: () => _cambiarForma(),
          child: Icon(Icons.play_circle_filled),
        ),
       )
    );
  }

  void _cambiarForma() 
  {

    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());   
    });

  }

}