import 'package:flutter/material.dart';
import 'Profile.dart';
import 'AccountHome.dart';
import 'Orders.dart';
import 'Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex;
  List<Widget> children = [
    AccountHome(),
    MyOrders(),
    ProfilePage(),
    MyCart()
  ];
  Widget childrenToDisp;
  @override
  void initState() {
    currentIndex = 0;
    childrenToDisp = children[0];
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      childrenToDisp = children[currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(padding: EdgeInsets.all(0.0), child: childrenToDisp),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.list), title: new Text('Orders')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person), title: new Text('Profile')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.shopping_cart), title: new Text('Cart')),
          ],
          currentIndex: currentIndex,
          onTap: onTabTapped,
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: Colors.white,
        ));
  }
}