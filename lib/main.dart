
import 'package:flutter/material.dart';
import 'package:project4/currencypage.dart';
import 'package:project4/homepage.dart';
import 'package:project4/lenghtpage.dart';
import 'package:project4/startpage.dart';
import 'package:project4/temperaturepage.dart';
import 'package:project4/weightpage.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget{

  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: StartPage(),
      routes: {
        "StartPage" : (context) => StartPage(),
        "HomePage" :(context) => HomePage(),
        "LenghtPage" :(context) => LenghtPage(),
        "WeightPage" :(context) => WeightPage(),
        "TemperaturePage" :(context) => TemperaturePage(),
        "CurrencyPage" :(context) => CurrencyPage(),
      },
    );
  }
}