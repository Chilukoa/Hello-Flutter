import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.person),
        ),
        accountName: Text('John Doe'),
        accountEmail: Text('JDoe@gmail.com'),
        //margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    );
  }
}