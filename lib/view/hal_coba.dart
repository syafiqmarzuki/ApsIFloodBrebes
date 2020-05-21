import 'package:flutter/material.dart';
import 'package:ibrebesf/models/debitrt.dart';

class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  DebitR debit = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Coba')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((debit != null)
              ? debit.id + " | " + debit.ketinggian : "Tidak ADa"),
              RaisedButton(
                onPressed: (){
                  DebitR.connectToAPI('1').then((value){
                    debit = value;
                    setState(() {});
                  });

              }, child: Text('Get'),)
              ],
          ),
        ),
      ),
    );
  }
}
