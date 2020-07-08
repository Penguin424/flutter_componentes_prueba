import 'package:componentes/src/pages/Alert_pages.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _lista(),
      )
    );
  }

  Widget _lista() 
  {
    return FutureBuilder(
      future: menuProvider.cargarDara(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot)
      {
        print('Builder');
        print(snapshot.data);
        return ListView(
          children: _listaItem(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItem(List<dynamic> data, BuildContext context) 
  {
    return data.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: getIcon(item['icon']),
            title: Text(item['texto']),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
            onTap: ()
            {
              Navigator.pushNamed(context, item['ruta']);
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}