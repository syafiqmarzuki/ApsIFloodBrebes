import 'package:flutter/material.dart';
import 'package:ibrebesf/customs/circular.dart';

class Terkini extends StatefulWidget {
  @override
  _TerkiniState createState() => _TerkiniState();
}


class _TerkiniState extends State<Terkini> {
  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/img/sungai.jpg',
            fit: BoxFit.cover,
            width: 400,
          ),
          Column(
            children: <Widget>[
              Text('Kamis 21/01/2020',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  '20:00:01',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              new CircularProgressb(
                size: width / 1.2,
                color: const Color(0xFF1CB5E0),
                backgroundColor: const Color(0xFFFFFFFF),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                      shape: StadiumBorder(),
                      color: Colors.lightBlue,
                      child: Text("SUNGAI"),
                      onPressed: () {
                        
                        print("Klik");
                      }),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                      shape: StadiumBorder(),
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text("PINTU AIR"),
                      onPressed: () {
                      print("KLik");
                    })
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
