import 'dart:async';
import 'package:flutter/material.dart';
import 'odberistrana.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    setState(() {
      Timer(const Duration(seconds: 2), () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OdberiStranica()));
        });
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(child: Container(child: Text('IMA NEMA', style: TextStyle(color: Colors.white, fontSize: 30.0)))),
      ),
    );
  }
}
