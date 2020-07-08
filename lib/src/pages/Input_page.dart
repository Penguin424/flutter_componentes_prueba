import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha ="";

  String _opcionesSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos x', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFiledDataController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.red,
           title: Text('Inputs'),
           centerTitle: true,
         ),
         body: ListView(
           padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
           children: <Widget>[
             _crearInput(),
             Divider(),
             _crearEmail(),
             Divider(),
             _crearPassword(),
             Divider(),
             _crearDate(context),
              Divider(),
            _crearDropDown(),
             Divider(),
             _crearPerosna(),
           ],
         )
       ),
    );
  }

  Widget _crearInput() 
  {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),

        ),
        counter: Text('Letras: ${_nombre.length}'),
        hintText: 'Nombre de las persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility_new),
        focusColor: Colors.red,
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor) 
      {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPerosna() 
  {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es : $_email'),
      trailing: Text(_opcionesSeleccionada),
    );
  }

  Widget _crearEmail() 
  {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor) 
      {
        setState(() => _email = valor);
      },
    );
  }

  Widget _crearPassword() 
  {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (valor) 
      {
        setState(() => _password = valor);
      },
    );
  }

  Widget _crearDate(BuildContext context) 
  {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFiledDataController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Fecha',
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.date_range)
      ),
      onTap: ()
      {
        FocusScope.of(context).requestFocus(new FocusNode());

        _selectDate(context);
      },
    );   
  }

  void _selectDate(BuildContext context) async
  {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'MX')
    );

    if(picked != null)
    {
      setState(() {
        _fecha = picked.toString().split(' ')[0];
        _inputFiledDataController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown()
  {
    return _poderes.map((poder) {
      return DropdownMenuItem(
        child: Text('$poder'),
        value: poder,
      );
    }).toList();
  }

  Widget _crearDropDown() 
  {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Icon(Icons.select_all),
        Expanded(child: SizedBox(),),
        DropdownButton(
          items: getOpcionesDropDown(),
          value: _opcionesSeleccionada,
          onChanged: (opt)
          {
            setState(() {
              _opcionesSeleccionada = opt;
            });
          },
        ),
        SizedBox(width: 10.0,),
      ],
    );
  }
}