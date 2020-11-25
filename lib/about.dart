import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainZodiak.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('About'), centerTitle: true,
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputZodiak()));
            },
          ),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
                Picture(),
                Name(),
                Website(),
                Blog(),
              ]
          ),
        ),
      ),
    );
  }
}
class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundImage: AssetImage('images/zodiak1.png'),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}
class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Ramalan Zodiak Harian',
        style: TextStyle(
          color: Colors.white, fontSize: 25,
        ),),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}
class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('https://ramalanzodiak.com/',
        style: TextStyle(
          color: Colors.white, fontSize: 20,
        ),),
    );
  }
}
class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Container(
          width: 350,
          margin: const EdgeInsets.only(top: 20.0),
          child: Text('Apakah yang akan terjadi pada kehidupan mu ? Aplikasi ramalan zodiak harian hadir untuk memberikan informasi mengenai peruntungan mengenai cinta, karir, dan keuangan sesuai dengan zodiak mu. Selamat mencoba!',
            style: TextStyle(
              color: Colors.white, fontSize: 20,
            ),
          textAlign: TextAlign.justify,),
        )
      ],
    );
  }
}

