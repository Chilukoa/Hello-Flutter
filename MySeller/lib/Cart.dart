import 'package:flutter/material.dart';


class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Checkout'),backgroundColor: Colors.red,),
      body:Container(child: Center(child: Text('Pay here!'),),
      
    ));
  }
}