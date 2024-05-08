import 'package:flutter/material.dart';
// import 'package:project4/main.dart';



class TemperaturePage extends StatefulWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  TextEditingController h = TextEditingController();
  double res = 0.0; // Initialize res to avoid null value
  String selectedUnit = "C"; // Default selected unit
  String convertUnit = "C";
  // String? title1;
  bool test = true;

  void popmain(String unit) {
    switch (unit) {
      case "C":
        cpop(convertUnit);
        break;
      case "F":
        fpop(convertUnit);
        break;
      case "K":
        kpop(convertUnit);
        break;
    }
  }

  void cpop(String unit) {
    double value = double.parse(h.text);
    switch (unit) {
      case "C":
        res = value;
        break;
      case "F":
        res = 9 * value / 5 + 32;
        break;
      case "K":
        res = value + 273.15;
        break;
    }
    setState(() {});
  }

  void fpop(String unit) {
    double value = double.parse(h.text);
    switch (unit) {
      case "C":
        res = 5 / 9 * (value - 32);
        break;
      case "F":
        res = value;
        break;
      case "K":
        res = 5 / 9 * (value - 32) + 273.15;
        break;
    }
    setState(() {});
  }

  void kpop(String unit) {
    double value = double.parse(h.text);
    switch (unit) {
      case "C":
        res = value - 273.15;
        break;
      case "F":
        res = 9 / 5 * (value - 273.15) + 32;
        break;
      case "K":
        res = value;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(image:DecorationImage(image:  AssetImage("images/14.jpg") , fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffEEEEEE),
            child: Icon(Icons.home),
            onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil("HomePage", (route) => false);
          },),
          body: Container(
             
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
        
                SizedBox(height: 150,),
        
                Center(
                  child: Container(
                    child: Text("Temperature" , style: TextStyle(fontSize: 40,),),
                  ),
                ),
        
                SizedBox(height: 180,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
        
                        onChanged: (value) => setState(() {
                          if (value.isEmpty) {
                            res = 0;
                            test = true;
                          } else {
                            test = false;
                            popmain(selectedUnit);
                          }
                        }),
                        controller: h,
                        decoration: const InputDecoration(
                          hintText: "Enter Temperature :",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff929AAB))
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff393E46) , width: 3)
                          )
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
        
                    Container(
                      width: 100,
                      child: ListTile(
                        title: Text("$selectedUnit"),
                        trailing: PopupMenuButton<String>(
                        onSelected: (unit) => setState(() {
                          selectedUnit = unit;
                          if (test) {
                          } else {
                            popmain(unit);
                          }
                        }),
                        itemBuilder: (context) => [
                          const PopupMenuItem(value: "C", child: Text("C")),
                          const PopupMenuItem(value: "F", child: Text("F")),
                          const PopupMenuItem(value: "K", child: Text("K")),
                        ],
                      ),),
                    ),
        
                  ],
                ),
        
                SizedBox(height: 30,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff929AAB)),
                    ),
                    width: 200,
                    height: 60,
                    child: Center(
                      child: Text(
                        "$res",
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
        
                    
                  Container(
                    width: 100,
                    child: ListTile(
                      title: Text("$convertUnit"), 
                      trailing: 
                        PopupMenuButton<String>(
                          onSelected: (unit) => setState(() {
                            convertUnit = unit;
                            if (test) {
                            } else {
                              popmain(selectedUnit);
                            }
                          }),
                          itemBuilder: (context) => [
                            const PopupMenuItem(value: "C", child: Text("C")),
                            const PopupMenuItem(value: "F", child: Text("F")),
                            const PopupMenuItem(value: "K", child: Text("K")),
                          ],
                        ),
                      
                    ),),
                  ],
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}