import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

import 'dart:async';
import 'dart:convert';

class Async extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Async_State();
  }

}

class Async_State extends State<Async>{

  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("ASYNC"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(child: Text("Maps"),
          onPressed: (){
            List<String> products = ["iPhone", "hamburger", "laptop","macbook","rocket", "notebook"];
            List<int> prices = [550, 123, 523, 111, 849, 235];

            Get_map(){
             return Map.fromIterables(products, prices);
            }

            Map();

          },),

          RaisedButton(
            child: Text("Then Catch"),
            onPressed: (){
              var snackBar = SnackBar(
                //key: _scaffoldkey,
                content: Text("Stop Clicking on Me"),
                //action: SnackBarAction(label: "Shut up"),
              );
              _scaffoldkey.currentState.showSnackBar(snackBar);
            },
          ),

          
          RaisedButton(child: Text("Async await"),
          onPressed: (){
            async_await();
            print("moving on");

          },),
          RaisedButton(child: Text("Futures"),
          onPressed: (){

          Futures();

          },),

          Center(
            child: 
                Count(
                  count: count,
                  countChange: (value){
                    setState(() {
                      count += value;
                    });
                  },
                  ),
              
            ),


        ],
      ),
    );
  }

  Futures(){
    print("...starting...");
    return Future.delayed(Duration(seconds: 2),()=>100)
        .then((value){print("its $value");})
        .catchError((err){print("Caught $err");});
  }

  ////async await
  Future async_await()async{
    print("staring first...");
    await Future.delayed(Duration(seconds: 3),(){print("First Complete");});
  }

  


}

//Learning about Callbacks
class Count extends StatelessWidget{
  final int count;
  final Function(int) countChange;

  Count({this.count, this.countChange});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            countChange(1);
          },),

        
        FlatButton(
          child: Text("$count")
          ),

        IconButton(
          icon: Icon(Icons.remove),
          onPressed: (){
            countChange(-1);
          },)
      ],
    );
  }

}