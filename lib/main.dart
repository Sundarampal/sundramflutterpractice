import 'package:flutter/material.dart';

void main() {
  runApp(SundaramApp());
}


class SundaramApp extends StatefulWidget {
  const SundaramApp({super.key});

  @override
  State<SundaramApp> createState() => _SundaramAppState();
}

class _SundaramAppState extends State<SundaramApp> {
  int n1=2,n2 = 2;
  int result=0;
void multiply()
  {
    result=n1*n2;
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('EVEN NUMBER')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$result"),
              Text(
                'Button pressed $n1 times',
                style: TextStyle(fontSize: 25),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  n1 += 2;
                  multiply();
                  setState(() {

                  });


                },
                child: Text('Add 2 with setstate'),
              ),
              Text('button pressed $n2 times', style: TextStyle(fontSize: 25)),
              ElevatedButton(
                onPressed: () {
                  multiply();
                  setState(() {
                    n2 =n2+ 3;
                  });



                },
                child: Text('oddnumber'),

              ),
            ],
          ),
        ),
      ),
    );
  }}

