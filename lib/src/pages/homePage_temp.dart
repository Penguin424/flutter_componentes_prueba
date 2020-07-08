import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  List<Widget> _crearItems()
  {

    return opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(item + '!'),
            subtitle: Text('Cualquier Cosa'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
        ],
      );

    }).toList();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ListView(
            children: _crearItems()
          )
        ),
      ),
    );
  }
}