import 'package:flutter/material.dart';


class Forms extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Forms_State();
  }

}


class Forms_State extends State<Forms>{

  var _username;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text("Forms"),),
      body: Column(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "username"),
                    onChanged: (String newValue){
                      _username = newValue;
                    },
                    validator: (String SubmittedValue){
                      if(SubmittedValue.isEmpty){
                        return ("username cannot be empty");
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "password"),
                  ),
                ],
              ),
            ),
            ),

          SizedBox(
            height: 50,
          ),

          InkWell(
            onTap: (){print("node tapped");},
            child: Container(child: Icon(Icons.share),
                    height: 100,
                    width: 100,
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
                          offset: Offset(-6.0, -6.0),
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
          )
        ],
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.verified_user),
          onPressed: (){
            if(_formKey.currentState.validate()){
              print("form submitted");
            }
          })
      );
    
  }

}