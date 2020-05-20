import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_app/views/InterestCalculator.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_State();
  }

}

List<String>items = [];

class Home_State extends State<Home>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var cartColor = Colors.red;
  var _currentValue;
  List<String>screens = ["Interest Calculator", "To Do List", "List", "Async", "Fetch", "RequestJson", "Early Acces"];
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: <Widget>[
            buildTopCard(),

            buildTabs(context),

            SizedBox(
              child: _grid,
              height: 550,

            ),



          ],
        )
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
                        child: Text("INTEREST CALCULATOR"),
                        onPressed: (){
                          Navigator.of(context).pushNamed('InterestCalculator');
                          },),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: FlatButton(
                      child: Text("TO DO LIST"),
                      onPressed: (){
                        Navigator.of(context).pushNamed('ToDoList');
                      },),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: GestureDetector(
                      child: Text("LIST"),
                      onTap: (){
                        Navigator.pushNamed(context, "List");
                      }
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: GestureDetector(
                      child: Text("ASYNC"),
                      onTap: (){
                        Navigator.pushNamed(context, "Async");
                      },
                    )
                  ),

                  Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: GestureDetector(
                        child: Text("FETCH"),
                        onTap: (){
                          Navigator.pushNamed(context, "fetch");
                        },
                      )
                  ),

                  Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: GestureDetector(
                        child: Text("STACKS"),
                        onTap: (){
                          Navigator.pushNamed(context, "Stacks");
                        },
                      )
                  ),


                  Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: GestureDetector(
                        child: Text("FORMS"),
                        onTap: (){
                          Navigator.pushNamed(context, "Forms");
                        },
                      )
                  ),




                ],
              ),
            ),
          );
  }



  Padding buildTopCard() {
    return Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
            child: Card(
              elevation: 3,
              child:
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){

                  },),

                  Expanded(
                    child: Container(
                      //padding: ,
                      height: 20,
                      width: 20,
                      child: DropdownButton(
                        items: screens.map((String DropDownStringItem){
                          return DropdownMenuItem(
                            value: DropDownStringItem, 
                            child: Text(DropDownStringItem),);
                        }).toList(),
                        
                        value: _currentValue,

                        onChanged: (newValue){
                          setState(() {
                            _currentValue = newValue;
                          });
                        },
                        
                      ),
                    ),
                    ),

                  IconButton(icon: Icon(Icons.mic_none),
                              onPressed: (){},
                              color: Colors.blue,),

                  IconButton(
                    icon: Icon(Icons.shopping_cart,color: cartColor),
                    onPressed: (){
                      print("cart viewed");
                      setState(() {
                        if(cartColor == Colors.red){cartColor = Colors.blue;}
                        else{cartColor = Colors.red;}
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen()),);

                        
                  
                      });
                      
                    },
                    )


                  //Container(child: Text("W"), bo),

            ],),


            ),
          );
  }

}

// short list
final _grid = GridView.count(
  crossAxisCount: 2,
  children: <Widget>[

    InkWell(
      onTap: (){
        items.add("Venice");
        //print(items);
      },
      child: Card(child: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage("images/IMG_4124.png"),),
    )),),),
    

    GestureDetector(
      onTap: (){
      items.add("mansion");
      //print(items);
      },
      child: Card(child: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage("images/IMG_4127.png"),),
    )),),),
    

    GestureDetector(
      onTap: (){
        items.add("spiderman");
        //print(items);
      },
      child: Card(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("images/spiderman.jpg"),),
          )),),),

    
    GestureDetector(
      onTap: (){
        items.add("elon");
        //print(items);
      },
      child: Card(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("images/elon6.jpg"),),
          )),),),

    GestureDetector(
      onTap: (){
        items.add("quote");
        //print(items);
      },
      child: Card(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("images/IMG_4128.png"),),
          )),),),


    GestureDetector(
      onTap: (){
        items.add("Simba");
        //print(items);
      },
      child: Card(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("images/IMG_4129.png"),),
          )),),),



    GestureDetector(
      onTap: (){
        items.add("Mark");
        //print(items);
      },
      child: Card(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("images/IMG_4132.png"),),
          )),),),


  ],
);


class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart"),),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int Index) {
          //return ListTile(title: Text("$items[Index]"));
          return Card(child: Text(items[Index], style: TextStyle(fontSize: 20),),);
        }
    )
    );
  }

}







