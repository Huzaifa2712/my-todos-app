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
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Registration'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          actions: <Widget>[
            Icon(Icons.shopping_cart),
            SizedBox(width: 20),
            Icon(Icons.search)
          ],
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
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2)),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Name',
                    hintText: 'enter your name'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
