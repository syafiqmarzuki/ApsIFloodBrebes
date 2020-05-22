import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pusher_websocket_flutter/pusher.dart';

import 'package:ibrebesf/customs/circular.dart';

class Terkini extends StatefulWidget {
  @override
  _TerkiniState createState() => _TerkiniState();
}

class _TerkiniState extends State<Terkini> {
  
  Channel _Csungai, _Cdebitt;
  String _timeString, _dateString;
  int ketinggian = 0;
  
  @override
  void initState() {
    _initPusher();
    _timeString = _formatTime(DateTime.now());
    _dateString = _formatDate(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t)=>_getTime());
    super.initState();
  }

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
              Text(_dateString.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  _timeString.toString(),
                  //ketinggian.toString(),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
                        shape: StadiumBorder(),
                        color: Colors.lightBlue,
                        child: Text("SUNGAIk"),
                        onPressed: () {
                          print("Klik");
                        }),
                    RaisedButton(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
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

  // setTanggal waktu sekarang

  String _formatDate(DateTime dateTime){
    return DateFormat("EEEE - dd/MM/yyyy").format(dateTime);
  }

  String _formatTime(DateTime dateTime){
    return DateFormat("HH:mm").format(dateTime);
  }

  void _getTime(){
    final DateTime now = DateTime.now();
    final String formattedDate = _formatDate(now);
    final String formattedTime = _formatTime(now);

 
    setState(() {
      _timeString = formattedTime;
      _dateString = formattedDate;
    });
  }

  //pusher

  Future<void> _initPusher() async {
    try {
      //bfecca9f74bbcde68bdb
      await Pusher.init('bfffd478ab1ce9fc70a5', PusherOptions(cluster: 'ap1'));
    } catch (e) {
      print(e);
    }

    //konek
    Pusher.connect(
      onConnectionStateChange: (val){

      },
      onError: (err){
        print(err.message);
      }
    );

    //subs
    _Csungai = await Pusher.subscribe('channel_sungai');
    _Cdebitt = await Pusher.subscribe('channel_debit');

    //bind
    _Csungai.bind('event_sungai', (onEvent){
      if(mounted){
        final data = json.decode(onEvent.data);
        setState(() {
          ketinggian = int.parse(data['ketinggian']); 
        });
      }
    });

    //_Cdebitt.bind('Edebitt', (onEvent){
      //print(onEvent.data);
    //});
  }
}
