import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          title: Text('Cards'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() 
  {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red,),
            title: Text('Soy el titulo de esta tarjeta!!'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero que vean para tener idea de lo que quiero moestrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Okay'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() 
  {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.red[200],
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          )
        ],
      ),
    );
  }

}