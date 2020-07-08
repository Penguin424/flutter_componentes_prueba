import 'package:flutter/material.dart';

class SilderPage extends StatefulWidget {
  SilderPage({Key key}) : super(key: key);

  @override
  _SilderPageState createState() => _SilderPageState();
}

class _SilderPageState extends State<SilderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
          appBar: AppBar(
            title: Text('Sliders'),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(  
              children: <Widget>[
                _crearSlider(),
                Expanded(
                  child: _crearImagen()
                ),
              ],
            )
          ),
       ),
    );
  }

  Widget _crearSlider() 
  {
    return Slider(
      activeColor: Colors.red,
      label: 'Tamaño de la imagen',
      onChanged: (double newValue)
      {
        setState(() {
          _valorSlider = newValue;
        });
      },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
    );
  }

  Widget _crearImagen() 
  {
    return Image(
      image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  } 
}