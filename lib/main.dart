import 'package:componentes/src/Routes/routes.dart';
import 'package:componentes/src/pages/Alert_pages.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings)
      {
        print('Ruta llamada ${settings.name}');
        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage()
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}