import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home:MyApp()));

  class MyApp extends StatefulWidget{
    @override
  _MyAppState createState() {
     return new _MyAppState();
  }
  }

class _MyAppState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text('Pizza Delivery App'),
      ),
      body: new Container(
       
      ),
      );
  }
}
