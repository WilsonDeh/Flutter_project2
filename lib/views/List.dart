import 'package:flutter/material.dart';

class List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("List"),),
        body: listView,
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
      ),
    );
  }

}

//creating short listview

var listView = ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.bluetooth),
      title: Text("Bluetooth"),
    ),

    ListTile(
      leading: Icon(Icons.search),
      title: Text("Search"),
    ),

    ListTile(
      leading: Icon(Icons.attach_file),
      title: Text("Attachment"),
    ),

    ListTile(
      leading: Icon(Icons.access_alarm),
      title: Text("Alarm"),
    ),
  ],
);






