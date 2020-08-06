import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Defekti extends StatefulWidget {
  @override
  _Defekti createState() => _Defekti();
}

class _Defekti extends State<Defekti> {

  var db = Firestore.instance;


  @override
  void initState() {
    super.initState();
  }


  var zemiOdPole = TextEditingController();

  var tekst = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 400,
            child: TextFormField(
              controller: zemiOdPole,
              decoration: InputDecoration(
                hintText: 'Vnesi nesto'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: RaisedButton(
              color: Colors.blue,
               child: Text('Klikni', style: TextStyle(color: Colors.white),),
              onPressed: submit,
            ),
          ),

          Container(
            child: Text(tekst) ,
          )
        ],
      )
    );
  }

  Future<void> submit() async {

    Firestore.instance.collection('lista-defekti').document('a').updateData({ 'b': 'g' });

  }
}
