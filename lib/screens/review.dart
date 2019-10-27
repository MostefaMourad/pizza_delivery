import 'package:flutter/material.dart';
import 'package:pizza_delivery/code/pizza.dart';

class Review extends StatelessWidget {
  Pizza _pizzaOrder ;
  List<String> _list = new List<String>();
// This constructor is used to initialise the variables in this class
  Review({order:null}){
    _pizzaOrder = order;
    _list.add(_pizzaOrder.size);
    _list.add(" ");
    _list.add("toppings :");
    // initialising the toppings of the pizza
    _pizzaOrder.toppings.forEach((String name,bool value){
      if(value) _list.add(name);
    });
  }
// th build is to implement the front of the page
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pizza Reviewing'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(children: <Widget>[
          new Text('Review Your Order',style: new TextStyle(fontWeight: FontWeight.bold),) ,
          new Expanded(
            child: new ListView.builder(
              shrinkWrap: true,
              itemCount: _list.length,
              itemBuilder: (BuildContext context,int index){
                  return new Text(_list.elementAt(index)) ;
                },
            ),
          )
        ],),
      ),
      
    );
  }
}