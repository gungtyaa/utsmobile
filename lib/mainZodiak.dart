import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'result.dart';
import 'about.dart';
import 'DecideZodiak.dart';

class InputZodiak extends StatefulWidget {
  @override
  _InputZodiakState createState() => _InputZodiakState();
}

class _InputZodiakState extends State<InputZodiak> {
  String nama;
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text('Ramalan Zodiak'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('images/zodiak2.jpeg',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        title: TextField(
                          onChanged: (txt) {
                            setState(() {
                              nama = txt;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Nama',
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        title: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          hint: new Text('Pilih Zodiak'),
                          underline: Container(height: 1, color: Colors.black),
                          items: <String>['Aries', 'Taurus', 'Gemini', 'Cancer', 'Leo', 'Virgo',
                            'Libra', 'Scorpio', 'Sagittarius', 'Capricon', 'Aquarius', 'Pisces']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  )),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
                child: RaisedButton(
                  onPressed: () {
                    DecideZodiak zodiak = DecideZodiak(nama: nama, zodiak: dropdownValue);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ZodiakResult(
                              nama: nama,
                              zodiak : dropdownValue,
                              pesanZodiak: zodiak.userZodiak(),
                              )),
                    );
                  },
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  child: Text(
                    'LIHAT PERUNTUNGAN MU',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          //color: Colors.transparent,
          child: Container(
            height: 40,
            color: Colors.black54,
            alignment: Alignment.center,
            child: Text(
              'Developed in 2020',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}
