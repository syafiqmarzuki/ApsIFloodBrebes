import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Aplikasi ini untuk memantau sungai',
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'assets/img/logob.png',
                        height: 100,
                        width: 100,
                      ),
                      Image.asset('assets/img/logokabbrebes.png',
                          height: 100, width: 100)
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[Text('VERSI 1.0'), Text('PEMKAB BREBES')],
                ),
              ),
            ],
          ),
        ));
  }
}
