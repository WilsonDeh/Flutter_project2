import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ToDoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ToDoList_state();
  }
}

class ToDoList_state extends State<ToDoList> {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.green[500],
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.indigo[600],
                height: 100.0,
                width: 300.0,
              ),
              SizedBox(height: 5,),
              Expanded(
                flex: 3,
                child: Container(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600],
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                        ),
                        ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey[200],
                            Colors.grey[300],
                            Colors.grey[400],
                            Colors.grey[500],
                          ])
                        
                    ),
                  ),
                  color: Colors.grey[300],
                  height: 100.0,
                  width: 350.0,
                  ),
              ),
              SizedBox(height: 5,),
              Expanded(
                flex: 3,
                child: Container(

                  color: Colors.blue,
                  height: 100.0,
                  width: 300.0,
                ),
              ),
              SizedBox(height: 5,),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.pink[600],
                  height: 100.0,
                  width: 300.0,
                ),
              ),
              /*
              Container(),*/
            ],),
        ),
    );
  }
}
