import 'package:flutter/material.dart';

class dodadi  extends StatefulWidget {
  @override
  _dodadi createState() => _dodadi();
}

class _dodadi extends State<dodadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('IMA NEMA'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
            child: Stack(
                children: <Widget>[
                  Positioned (
                      right: 50,
                      left:50,
                      top: 70,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide( color: Colors.black )
                            ),
                            hintText: 'Внеси Адреса'
                        ),)),
                  Positioned(
                      top: 200,
                      left:210,
                      right: 25,
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                              child: Text('СТРУЈА', style: TextStyle(color: Colors.black, fontSize: 11)),
                              onPressed: () {},
                              backgroundColor: Colors.white ),),)),
                  Positioned(
                      top: 200,
                      left:25,
                      right: 210,
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                              child: Text('ВОДА', style: TextStyle(color: Colors.black, fontSize: 11)),
                              onPressed: () {},
                              backgroundColor: Colors.white ),
                        ),)),
                  Positioned(
                    top:555,
                    bottom: 50,
                    right: 120,
                    left: 120,
                    child: new RaisedButton(
                      color: Colors.black,
                      child: new Text("ПРОДОЛЖИ", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                      onPressed: () {},


                    ),
                  ),
                ]))
      );}}





