import 'package:flutter/material.dart';



class LenghtPage extends StatefulWidget {
  const LenghtPage({super.key});

  @override
  State<StatefulWidget> createState() => _LenghtPageState();
}

class _LenghtPageState extends State<LenghtPage> {
  TextEditingController h = TextEditingController();
  double res = 0.0; // Initialize res to avoid null value
  String selectedUnit = "cm"; // Default selected unit
  String convertUnit = "cm";

  void popmain(String unit) {
    switch (unit) {
      case "cm":
        cmpop(convertUnit);
        break;
      case "m":
         mpop(convertUnit);
        break;
        case "kilo":
        kilopop(convertUnit);
        break;
      case "y":
        ypop(convertUnit);
        break; 
      case "in":
        inpop(convertUnit);
        break;
      case "ft":
        ftpop(convertUnit);
        break;
      case "mi":
        mipop(convertUnit);
        break;
    }
  }

  void cmpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value;
        break;
      case "m":
        res = value / 100;
        break;
      case "in":
        res = value * 0.393701;
        break;
      case "y":
        res = value / 91.44;
        break;
      case "ft":
        res = value / 30.48;
        break;
      case "mi":
        res = value * 6.2137*0.000001;
        break;
      case "kilo":
        res = value / 100000;
      
    }
    setState(() {});
  }
 void mpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 100;
        break;
      case "m":
        res = value;
        break;
      case "in":
        res = value * 39.37;
        break;
      case "y":
        res = value * 1.094;
        break;
      case "ft":
        res = value * 3.281;
        break;
      case "mi":
        res = value * 0.000621371;
        break;
      case "kilo":
        res = value / 1000;
      
    }
    setState(() {});
  }
 void kilopop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 100000;
        break;
      case "m":
        res = value * 1000;
        break;
      case "in":
        res = value * 39370;
        break;
      case "y":
        res = value * 1094;
        break;
      case "ft":
        res = value * 3281;
        break;
      case "mi":
        res = value  / 1.609;
        break;
      case "kilo":
        res = value;
      
    }
    setState(() {});
  }
  void ypop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 91.44;
        break;
      case "m":
        res = value * 0.9144;
        break;
      case "in":
        res = value * 36;
        break;
      case "y":
        res = value;
        break;
      case "ft":
        res = value * 3;
        break;
      case "mi":
        res = value / 1760;
        break;
      case "kilo":
        res = value * 0.0009149;
      
    }
    setState(() {});
  }
  void inpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 2.54;
        break;
      case "m":
        res = value * 0.0254;
        break;
      case "in":
        res = value;
        break;
      case "y":
        res = value / 36;
        break;
      case "ft":
        res = value * 0.0833333;
        break;
      case "mi":
        res = value / 63360;
        break;
      case "kilo":
        res = value / 39370;
      
    }
    setState(() {});
  }
   void ftpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 30.48;
        break;
      case "m":
        res = value / 3.281;
        break;
      case "in":
        res = value * 12;
        break;
      case "y":
        res = value / 3;
        break;
      case "ft":
        res = value;
        break;
      case "mi":
        res = value / 5280;
        break;
      case "kilo":
        res = value / 3281;
      
    }
    setState(() {});
  }
  void mipop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "cm":
        res = value * 160934;
        break;
      case "m":
        res = value * 1609.34;
        break;
      case "in":
        res = value * 63360;
        break;
      case "y":
        res = value * 1760;
        break;
      case "ft":
        res = value * 5280;
        break;
      case "mi":
        res = value;
        break;
      case "kilo":
        res = value * 1.609;
      
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
        image:DecorationImage(image:  AssetImage("images/14.jpg") , fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffEEEEEE),
            child: Icon(Icons.home),
            onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil("HomePage", (route) => false);
          },),
          body: Container(
            
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
        
                SizedBox(height: 150,),
        
                Center(
                  child: Container(
                    child: Text("Length" , style: TextStyle(fontSize: 40,),),
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
                          
                          popmain(selectedUnit);
                        }),
                        controller: h,
                        decoration: const InputDecoration(
                          hintText: "Enter Length :",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff929AAB)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:  Color(0xff393E46) , width: 3)
                          )
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
        
                    Container(
                      width: 130,
                      child: ListTile(
                      title:Text("$selectedUnit"),
                      trailing: PopupMenuButton<String>(
                        onSelected: (unit) => setState(() {
                          selectedUnit = unit;
                          popmain(unit);
                        }),
                        itemBuilder: (context) => [
                        const  PopupMenuItem(value: "cm", child: Text("cm")),
                        const  PopupMenuItem(value: "m", child: Text("m")),
                        const  PopupMenuItem(value: "y", child: Text("y")),
                        const  PopupMenuItem(value: "in", child: Text("in")),
                        const  PopupMenuItem(value: "ft", child: Text("ft")),
                        const  PopupMenuItem(value: "mi", child: Text("mi"))
                        ],
                      ),
                    ),),
        
                  ],
                ),
                
                SizedBox(height: 30,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
        
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff929AAB))
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
                      width: 130,
                      child: ListTile(
                        title:Text("$convertUnit"),
                        trailing: PopupMenuButton<String>(
                          onSelected: (unit) => setState(() {
                          convertUnit = unit;
                          popmain(selectedUnit);
                          }),
                          itemBuilder: (context) => [
                          const PopupMenuItem(value: "cm", child: Text("cm")),
                          const PopupMenuItem(value: "m", child: Text("m")),
                          const PopupMenuItem(value: "y", child: Text("y")),
                          const PopupMenuItem(value: "in", child: Text("in")),
                          const PopupMenuItem(value: "ft", child: Text("ft")),
                          const PopupMenuItem(value: "mi", child: Text("mi"))
                            ],
                          ),
                        ) 
                    ),
                    
                    
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