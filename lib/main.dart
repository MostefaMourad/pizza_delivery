import 'package:flutter/material.dart';
import 'package:pizza_delivery/screens/home.dart';
import 'package:pizza_delivery/screens/order.dart';
import 'package:pizza_delivery/screens/review.dart';

void main() => runApp(MyApp(),);

  class MyApp extends StatelessWidget{
    
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
       routes: <String, WidgetBuilder > {
       '/Home' :(BuildContext context) => new Home(), 
       '/Order' :(BuildContext context) => new Order(), 
       '/Review' :(BuildContext context) => new Review(), 
      },
      home: new Home(),
    );
  }
}
