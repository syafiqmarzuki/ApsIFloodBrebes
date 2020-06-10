import 'package:ibrebesf/models/debitr.dart';
import 'package:ibrebesf/models/sungair.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:sleek_circular_slider/sleek_circular_slider.dart';
//import  'package:circular_countdown/circular_countdown.dart';


import 'package:ibrebesf/customs/circleprogress.dart';


class Terkini extends StatefulWidget {
  @override
  _TerkiniState createState() => _TerkiniState();
}

class _TerkiniState extends State<Terkini> with SingleTickerProviderStateMixin {

  String _timeString, _dateString;
  var _databaseReference = FirebaseDatabase().reference().child('Raspi3');
  AnimationController progressController;
  Animation<double> sungAnimation;
  Animation<double> debiAnimation;



  

  @override
  void initState() {
    _timeString = _formatTime(DateTime.now());
    _dateString = _formatDate(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    
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
               Text(
                  _timeString.toString(),
                  //ketinggian.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              
              StreamBuilder(
                stream: _databaseReference.onValue,
                builder: (context, snapshot){
                  if(snapshot.hasData &&
                  !snapshot.hasError &&
                  snapshot.data.snapshot.value != null){
                    var _sungai = SungaiR.fromJson(snapshot.data.snapshot.value['Sungai']);
                    var _debit = DebitR.fromJson(snapshot.data.snapshot.value['Debit']);
                    double _sungaiDo = _sungai.ketinggian;
                    double _debitDo = _debit.ketinggian;

                      _coba(double _sungaiDo,double _debitDo){
                        progressController = AnimationController(vsync: this,
                        duration: Duration(milliseconds: 1000));

                          sungAnimation = Tween<double>(begin: -50, end:_sungaiDo).animate(progressController)
                          ..addListener((){
                            setState(() {});
                          });

                          debiAnimation = Tween<double>(begin: -50, end:_debitDo).animate(progressController)
                          ..addListener((){
                            setState(() {});
                          });
                        progressController.forward();
                      }
                      //start
                      return Container(child: CustomPaint(
                        foregroundPainter: CircleProgress(),
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                //isi lingkaran
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    //Ketinggian dan CM
                                    Text('70',
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text('CM',
                                        style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),),
                                  ],
                                ),
                                Text('Status - Amana', style: TextStyle(
                                  fontSize: 6, fontWeight: FontWeight.bold, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ) ,

                      );
                      //stop 
                  }else{}
                    return Container();

                }),


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

  String _formatDate(DateTime dateTime) {
    return DateFormat("EEEE - dd/MM/yyyy").format(dateTime);
  }

  String _formatTime(DateTime dateTime) {
    return DateFormat("HH:mm").format(dateTime);
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDate = _formatDate(now);
    final String formattedTime = _formatTime(now);

    setState(() {
      _timeString = formattedTime;
      _dateString = formattedDate;
    });
  }

}
