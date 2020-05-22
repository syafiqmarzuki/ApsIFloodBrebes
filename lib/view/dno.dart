import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:flutter_sparkline/flutter_sparkline.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  String _valYears;
  List _listYears = ["2019","2020","2021","2022"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Column(
          children: <Widget>[
            Row(children: <Widget>[
              Text('Tahun'),
              DropdownButton(
                hint: Text('Pilih Tahun'),
                value: _valYears,
                items: _listYears.map((value){
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(), 
                onChanged: (value){
                  setState(() {
                    _valYears = value;
                  });
                },)
            ],),
          
            new SingleChildScrollView(
              child: Table(
                //columnWidths: {1 : FractionColumnWidth(.2)},
                children: [
                  TableRow(children: [
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('Bulan', style: TextStyle(color: Colors.white),),
                      ],),),
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('1', style: TextStyle(color: Colors.white),),
                      ],),),
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('2', style: TextStyle(color: Colors.white),),
                      ],),),
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('3', style: TextStyle(color: Colors.white),),
                      ],),),
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('4', style: TextStyle(color: Colors.white),),
                      ],),),
                    Container(
                      color: Colors.blue,
                      child: Row(children: <Widget>[
                      Text('5', style: TextStyle(color: Colors.white),),
                      ],),),
                    
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                   
                    Container(
                      color: Colors.lightBlue,
                      child: Row(children: <Widget>[
                      Text('Januariu', style: TextStyle(color: Colors.yellow),),
                      ],),),
                    
                    Container(color: Colors.lightBlue,child: Row(),),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    Container(color: Colors.lightBlue,),
                    
                  ]),
                  TableRow(children: [
                    Text('Sungaik'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  TableRow(children: [
                    Text('Pintu Air'),
                    Text('30'),
                    Text('4'),
                    Text('4'),
                    Text('5'),
                    Text('3'),
                  ]),
                  
                  
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
