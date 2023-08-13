import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fondSize=40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fondSize),
                maxLines: null,
              ),
              Slider(value: _fondSize, onChanged: (newSize){
                setState(() {
                  _fondSize=newSize;
                });
              },
                min: 30.0,
                max: 200.0,

              )
            ],
          ),
        ),
      ),
    );
  }
}

