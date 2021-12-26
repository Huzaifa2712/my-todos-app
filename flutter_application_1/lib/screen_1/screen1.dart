import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen/home_screen.dart';

// ignore: camel_case_types
class screenA extends StatelessWidget {
  const screenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
          centerTitle: true,
          actions: <Widget>[Icon(Icons.shopping_cart), Icon(Icons.search)],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text('huzaifa khan'),
                  accountEmail: Text('huzaifa123@gmail.com')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('home'),
                onTap: () {
                  Navigator.pop(
                      context, MaterialPageRoute(builder: (context) => home()));
                },
              ),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('settings'),
                  onTap: () {})
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Name',
                  hintText: 'enter your name'),
            ),
          ),
        ),
      ),
    );
  }
}
