import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/bottom_navigation_bar.dart';

import 'Defekti.dart';
import 'dodadi.dart';


class mapa extends StatefulWidget {
  @override
  _mapa createState() => _mapa();
}

class _mapa extends State<mapa> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('IMA NEMA'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(title:
            Text('Дефекти', style: TextStyle(color: Colors.white)), icon: Icon(Icons.location_on,color: Colors.white,))

          ],
        onTap: (index) {
          setState(() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Defekti()));

          });
        }


      ),


        body: Container(

          child: Stack(
            children: <Widget>[
            GoogleMap(
              zoomControlsEnabled: false,

            initialCameraPosition: CameraPosition(target: LatLng(50.000000,5.0000000), zoom: 13,
        ),
    ),
              Positioned(
                bottom: 5,
               right: 5,
               child:FloatingActionButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => dodadi())),
                child: Icon(Icons.add, color: Colors.white,),
                backgroundColor: Colors.black,)

)

         ],

    ),

),
    );

  }
}
