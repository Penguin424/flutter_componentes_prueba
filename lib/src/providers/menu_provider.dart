import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider
{
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarDara() async
  {
    var data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();