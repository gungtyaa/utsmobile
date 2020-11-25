import 'package:flutter/material.dart';


class ZodiakResult extends StatelessWidget {
  final String pesanZodiak;
  final String nama;
  final String zodiak;

  ZodiakResult({this.zodiak, this.nama, this.pesanZodiak});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text('Ramalan Zodiak'),
        ),
        body: Container(
          alignment: Alignment.center ,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Container(
               child:
               Image.asset('images/zodiak3.jpeg',
               ),
             ),
             Text('Nama : $nama', style: TextStyle(color: Colors.white, fontSize: 30)),
             Text('Zodiak : $zodiak', style: TextStyle(color: Colors.white, fontSize: 25)),
             Text('Ramalan Untukmu : $pesanZodiak', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.justify),
           ],
         ),
        )
      ),
    );
  }
}
