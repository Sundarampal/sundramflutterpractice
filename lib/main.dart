import 'package:flutter/material.dart';

void main() {
  runApp(SundramApp());
}

class SundramApp extends StatelessWidget {
  SundramApp({super.key});
  int count = 9;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sundram Project Practice'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Button pressed $count timer',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  print("I was clicked");
                  count++;
                  print(count);
                },
                child: Text("Click me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
