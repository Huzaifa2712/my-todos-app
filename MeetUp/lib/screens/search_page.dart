import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  AppBar searchField() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(
            hintText: 'Search',
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              onPressed: (null),
              icon: Icon(Icons.clear),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchField(),
      body: Container(
        color: Colors.black87,
      ),
    );
  }
}

class UserResult extends StatelessWidget {
  const UserResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
