import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

//make a network request
//Future<http.Response>fetchAlbum(){
//  return http.get('https://jsonplaceholder.typicode.com/albums/1');
//}

class Album{
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map <String, dynamic> json){
    return Album(
      userId: json['userId'],
      id: json["id"],
      title: json['title'],
    );
  }
}

Future<Album> fetchAlbum()async{
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/3');

  if (response.statusCode== 200){
    return Album.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to load album');
  }
}

class FetchScreen extends StatefulWidget{
  FetchScreen({Key key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FetchState();
  }

}

class _FetchState extends State<FetchScreen>{
  Future<Album> futureAlbum;

  @override
  void initState(){
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Fetch Data Example",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot){
              if (snapshot.hasData){
                return Text(snapshot.data.title);
              }else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }

              return CircularProgressIndicator();
            }
          ),
        ),
      )
    );
  }


}