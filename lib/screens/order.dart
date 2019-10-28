import 'package:flutter/material.dart';
import 'package:pizza_delivery/code/pizza.dart';

class Order extends StatefulWidget{
  @override
  _OrderState createState() {
    return new _OrderState();
  }

}

class _OrderState extends State<Order> {
  pizza _pizzaOrder = new pizza();
  void setSize(String size){
    setState(() {
     _pizzaOrder.size=size; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Order Pizza'),),
      body: new Container(padding: new EdgeInsets.all(32.0),
        child: new Column(children: <Widget>[
          new DropdownButton(
            value: _pizzaOrder.size,
            items: pizza.sizes.map((String size1){
               return new DropdownMenuItem(
                 value: size1,
                 child: new Row(children: <Widget>[
                   new Icon(Icons.local_pizza),
                   new Text('Size : ' + size1)
                 ],),
               );
            }),
            onChanged: (String value){setSize(value);},
          ),
        ],
         
      ),),
    ) ;
  }
} 