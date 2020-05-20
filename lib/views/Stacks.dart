import 'package:flutter/material.dart';

class Stacks extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Stacks_State();
  }

}

class Stacks_State extends State<Stacks>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Opacity(
            opacity: 0.7,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/images.jpeg"),
                fit: BoxFit.fill)
            )
            
          ),
            )
          
          
          
        ],
      )
    );
  }

}