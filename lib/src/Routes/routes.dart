import 'package:componentes/src/pages/Alert_pages.dart';
import 'package:componentes/src/pages/Avatar_pages.dart';
import 'package:componentes/src/pages/Home.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes()
{
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}

