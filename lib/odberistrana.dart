import 'package:flutter/material.dart';

import 'mapa.dart';


class OdberiStranica extends StatefulWidget {
  @override
  _OdberiStranicaState createState() => _OdberiStranicaState();
}

class _OdberiStranicaState extends State<OdberiStranica> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: Text('IMA NEMA'),
          centerTitle: true,
            automaticallyImplyLeading: false,
        ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: new RaisedButton(
            color: Colors.black,
            child: new Text("GO TO MAIN PAGE", style: TextStyle(color: Colors.white, fontSize: 20.0)),
            onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => mapa()))
        ),
      )
    )
    );


  }
}
