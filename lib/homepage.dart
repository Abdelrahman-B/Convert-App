import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffEEEEEE),
          child: Icon(Icons.home),
          onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil("HomePage", (route) => false);
        },),
        body: Container(
          height: 1000,
          decoration: BoxDecoration(image:DecorationImage(image:  AssetImage("images/14.jpg") , fit: BoxFit.cover)),
          child: Center(
            child: Container(
              
              height: 600,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children:[
            
                  
                  Container(
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset('icons/1.png'),
                        ),
                        Center(
                          child: MaterialButton(
                            
                            padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
                            textColor: Color(0xff393E46),
                            color: Color(0xffEEEEEE),
                            onPressed: (){
                              Navigator.of(context).pushNamed("LenghtPage");
                            },
                            child: Text("Length" , style: TextStyle(fontSize: 30),),
                            ),
                        ),] 
                      ),
                  ),
            
                  Container(
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset('icons/2.png'),
                        ),
                        Center(
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 10),
                            textColor: Color(0xff393E46),
                            color: Color(0xffEEEEEE),
                            onPressed: (){
                              Navigator.of(context).pushNamed("WeightPage");
                            },
                            child: Text("Weight" , style: TextStyle(fontSize: 30),),
                            ),
                        ),] 
                      ),
                  ),
            
                 Container(
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          margin: EdgeInsets.only(right: 5),
                          child: Image.asset('icons/3.png'),
                        ),
                        Center(
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(horizontal: 7 , vertical: 10),
                            textColor: Color(0xff393E46),
                            color: Color(0xffEEEEEE),
                            onPressed: (){
                              Navigator.of(context).pushNamed("TemperaturePage");
                            },
                            child: Text("Temprature" , style: TextStyle(fontSize: 30),),
                            ),
                        ),] 
                      ),
                  ),
            
                 Container(
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset('icons/5.png'),
                        ),
                        Center(
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 10),
                            textColor: Color(0xff393E46),
                            color: Color(0xffEEEEEE),
                            onPressed: (){
                              Navigator.of(context).pushNamed("CurrencyPage");
                            },
                            child: Text("Currency" , style: TextStyle(fontSize: 30),),
                            ),
                        ),] 
                      ),
                  ),

                  SizedBox(height: 30,)
            
                  
                  
                ],),
              ),
          ),
        )
              
              
    ));
  }
}