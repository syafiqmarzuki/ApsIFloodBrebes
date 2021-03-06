import 'package:flutter/material.dart';
import 'hal_notif.dart';
import 'hal_about.dart';
import 'hal_terkini.dart';
import 'hal_riwayat.dart';

class Homess extends StatefulWidget {
  @override
  _HomessState createState() => _HomessState();
}

class _HomessState extends State<Homess> with SingleTickerProviderStateMixin  {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        title: new Text('IFloodBrebes'),
        actions: <Widget>[
           IconButton(
            icon: Icon(Icons.notifications),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Notifikasi()),);
            },),
            IconButton(
            icon: Icon(Icons.info),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> About()),);
            },),
        ],
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.import_export), text: 'Terkini',),
            new Tab(icon: new Icon(Icons.featured_play_list), text: 'Riwayat',),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Terkini(),
          new Riwayat(),
        ]),
      
      
      
    );
  }
}

