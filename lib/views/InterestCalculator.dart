import 'dart:ui';
import 'package:flutter/material.dart';


class InterestCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InterestCalculator_State();
  }
}

class InterestCalculator_State extends State<InterestCalculator> {
  double principal;
  double roi;
  double term;
  double output;

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  double getTotalAmount() {
    //total amount = principal + (principal * roi * term)/100

    double totalAmount = principal + (principal * roi * term) / 100;

    return totalAmount;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            buildTopCard(),
            buildTabs(context),
            buildSizedBox(),
            buildPrincipalTextField(),
            Row(
              children: <Widget>[buildRoiTextField(), buildTermTextField()],
            ),
            Row(
              children: <Widget>[buildCalculateButton(), buildResetButton()],
            ),
            Center(child: Text("Your amount after $term years is \$$output"))
          ],
        ),
      ),
    );
  }

  Expanded buildResetButton() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        height: 30,
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: RaisedButton(
          child: Text("Reset"),
          onPressed: () {
            principal = null;
            roi = null;
            term = null;
          },
        ),
      ),
    );
  }

  Expanded buildCalculateButton() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        height: 30,
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: RaisedButton(
          child: Text("Calculate"),
          onPressed: () {
            setState(() {
              output = getTotalAmount();
            });
          },
        ),
      ),
    );
  }

  Expanded buildTermTextField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: termController,
          onChanged: (String input) {
            term = double.parse(termController.text);
          },
          decoration: InputDecoration(
            labelText: "Net worth",
            hintText: "Enter Term",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }

  Expanded buildRoiTextField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: roiController,
          onChanged: (String input) {
            roi = double.parse(roiController.text);
          },
          decoration: InputDecoration(
            labelText: "Company Name",
            hintText: "Enter interest rate",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }

  Padding buildPrincipalTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: principalController,
        onChanged: (String input) {
          setState(() {
            principal = double.parse(principalController.text);
          });
        },
        decoration: InputDecoration(
          labelText: "Who's your favorite CEO",
          hintText: "Enter Principal",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 400,
      width: 100,
      child: pics,
    );
  }

  Padding buildTopCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 25, right: 25),
      child: Card(
        elevation: 3,
        child:
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: (){},),

            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search for Top Companies"
                ),
              ),),

            IconButton(icon: Icon(Icons.mic_none), onPressed: (){},),

            IconButton(
              icon: Icon(Icons.lightbulb_outline),
              onPressed: (){},
            )


            //Container(child: Text("W"), bo),

          ],),


      ),
    );
  }

  Container buildTabs(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: SizedBox(
        height: 15,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: FlatButton(
                child: Text("Interest Calculator"),
                onPressed: (){
                  Navigator.of(context).pushNamed('InterestCalculator');
                },),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: FlatButton(
                child: Text("To Do List"),
                onPressed: (){
                  Navigator.of(context).pushNamed('ToDoList');
                },),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(" Top charts"),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Categories"),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Editors' Choice"),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Family"),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Early access"),
            ),




          ],
        ),
      ),
    );
  }
}

var pics = ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon1.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon2.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon3.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon4.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon5.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage("images/elon6.jpg"),
          height: 300,
          width: 322,
        ),
      ),
    )
  ],
);
