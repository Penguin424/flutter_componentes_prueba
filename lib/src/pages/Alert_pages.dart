import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ), 
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.red[200],
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(ctx)
  {
    showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Titutlo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: <Widget>[
              FlatButton(
                  child: Text('1'),
                  onPressed: (){},
              ),
              FlatButton(
                  child: Text('2'),
                  onPressed: (){},
              ),
          ],
        );
      }
    );
  }

}