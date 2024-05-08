import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        body: Container(
            
          decoration: BoxDecoration(image:DecorationImage(image:  AssetImage("images/14.jpg") , fit: BoxFit.cover)),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
        
              Container(
                margin: EdgeInsets.only(bottom: 200),
                child: Center(
                  child: Text("Convert" ,
                    textAlign: TextAlign.center, 
                    style: TextStyle(fontSize: 60 , 
                    fontWeight: FontWeight.bold , 
                    color: Color(0xff393E46)), )),
              ),
                
              Container(
                child: Center(
                  
                  child: MaterialButton(
                    
                    padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
                    textColor: Color(0xff393E46),
                    color: Color(0xffEEEEEE),
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("HomePage");
                    },
                    child: Text("Start" , style: TextStyle(fontSize: 30 ),),
                  ),
                ),
              ),
                
            ],),
          )
                
                
          ),
      );
  }
}