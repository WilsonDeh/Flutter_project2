import 'package:flutter/material.dart';
import 'package:my_app/views/Async.dart';
import 'package:my_app/views/FetchScreen.dart';
import 'package:my_app/views/Forms.dart';
import 'package:my_app/views/InterestCalculator.dart';
import 'package:my_app/views/List.dart';
import 'package:my_app/views/Home.dart';
import 'package:my_app/views/Stacks.dart';
import 'package:my_app/views/ToDoList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:'home',
      routes: {
        'fetch': (context) => FetchScreen(),
        'home': (context) => Home(),
        'InterestCalculator': (context) => InterestCalculator(),
        'ToDoList': (context) => ToDoList(),
        'List': (context) => List(),
        'Async': (context) => Async(),
        'Forms': (context) => Forms(),
        'Stacks': (context) => Stacks(),
      },
    );
  }


}