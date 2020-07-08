import 'package:componentes/src/pages/Alert_pages.dart';
import 'package:componentes/src/pages/Avatar_pages.dart';
import 'package:componentes/src/pages/Home.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}