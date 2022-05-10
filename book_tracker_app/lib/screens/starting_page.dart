import 'package:flutter/material.dart';

import 'login_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.teal,
          child: Column(
            children: [
              const Spacer(),
              Text(
                'BOOK TRACKER',
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Change Yourself',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
              ),
              const SizedBox(
                height: 35,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Colors.white70,
                  backgroundColor: Colors.teal.shade900,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                icon: const Icon(Icons.login_rounded),
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('sign in'),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
