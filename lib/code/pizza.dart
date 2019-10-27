
class pizza{

static List<String> sizes = <String>["small","medium","large"];
String size = sizes.elementAt(0);
Map<String,bool> toppings = new Map<String,bool>();

pizza(){
  toppings.putIfAbsent('Pepperoni', ()=> false);
  toppings.putIfAbsent('Sausage', ()=> false);
  toppings.putIfAbsent('Cheese', ()=> false);
  toppings.putIfAbsent('Pineapple', ()=> false);
  toppings.putIfAbsent('Sardine', ()=> false);
  toppings.putIfAbsent('Onions', ()=> false);
  toppings.putIfAbsent('Mushrooms', ()=> false);
  toppings.putIfAbsent('Peppers', ()=> false);
  toppings.putIfAbsent('Pickles', ()=> false);
  toppings.putIfAbsent('Choclate', ()=> false);
  toppings.putIfAbsent('Banana', ()=> false);
  toppings.putIfAbsent('Olives', ()=> false);
}


}