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
  void setToppings(bool value,int ind){
    setState(() {
     String key = _pizzaOrder.toppings.keys.elementAt(ind);
     _pizzaOrder.toppings[key]=value; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Order Pizza'),),
      body: new Center( child : new Container(padding: new EdgeInsets.all(32.0),
        child: new Column(children: <Widget>[
          new DropdownButton<String>(
            value: _pizzaOrder.size,
            items: pizza.sizes.map((String size1){
               return new DropdownMenuItem(
                 value: size1,
                 child: new Row(children: <Widget>[
                   new Icon(Icons.local_pizza),
                   new Text('Size : ' + size1)
                 ],),
               );
            }).toList(),
            onChanged: (String value){setSize(value);},
          ),
          new Expanded(
            child: new ListView.builder(
              shrinkWrap: true,
              itemCount: _pizzaOrder.toppings.length,
              itemBuilder: (BuildContext context,int index){
                return new CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),
                  value: _pizzaOrder.toppings.values.elementAt(index),
                  onChanged: (bool val){
                   setToppings(val, index);
                  },
                );
              },
            ),
          ),
          new RaisedButton(
            child: new Text('continue'),
            onPressed: (){},
            )
        ],
         
      ),),
    )
    );
  }
} 