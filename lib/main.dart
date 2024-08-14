import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Text('Welcome to Flutter!'),
              SizedBox(
                  height:
                      20), // Adding some space between the text and the button
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Button Pressed!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Corrected button color
                ),
                child: Text('Press Me'), // Text on the button
              ),
            ],
          ),
        ),
      ),
    );
  }
}
