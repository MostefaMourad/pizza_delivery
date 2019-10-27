import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

  class MyApp extends StatelessWidget{
    
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
       routes: <String, WidgetBuilder > {
       '/Home' :(BuildContext context) => new Home(), 
       '/Order' :(BuildContext context) => new Home(), 
       '/Review' :(BuildContext context) => new Home(), 
  },
    );
  }
}
