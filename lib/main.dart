import 'package:flutter/material.dart';
import 'package:imanema/splashscreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ima Nema',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen()
    );
  }
}