import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Greeting app"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Flutter Text Style",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                height: 2.5,
              ),
            ),
            const Text(
              "Experiment with text styles",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                height: 2.5,
              ),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('You clicked the button!'),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text(
                "Click me",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: TextStyle(
                    fontSize: 18,
                    height: 2.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 18,
                    height: 2.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
