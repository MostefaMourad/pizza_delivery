import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pizza Ordering'),
      ),
      body: new Center( child : new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(children: <Widget>[
          new RaisedButton(
            child: new Text('Order Pizza'),
            onPressed: (){Navigator.pushNamed(context, '/Order');},
          )
        ],),
      ),
    ))
    ;
  }
}