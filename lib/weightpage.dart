import 'package:flutter/material.dart';



class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<StatefulWidget> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  TextEditingController h = TextEditingController();
  double res = 0.0; // Initialize res to avoid null value
  String selectedUnit = "Kg"; // Default selected unit
  String convertUnit = "Kg";

  void popmain(String unit) {
    switch (unit) {
      case "Kg":
        kilopop(convertUnit);
        break;
      case "Ton":
        tonnepop(convertUnit);
        break;
      case "lb":
        poundpop(convertUnit);
        break;
      case "g":
        grampop(convertUnit);
        break;
      case "oz":
        ouncepop(convertUnit);
        break;
    }
  }

  void kilopop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0;
    if(value.isNegative){
      value = value * -1;
    }
     // Handle invalid input
    switch (unit) {
      case "Kg":
        res = value;
        break;
      case "Ton":
        res = value / 1000;
        break;
      case "lb":
        res = 2.20462 * value;
        break;
      case "g":
        res = 1000 * value;
        break;
      case "oz":
        res = 35.274 * value;
        break;
    }
    setState(() {});
  }

  void poundpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "Kg":
        res = 0.453592 * value;
        break;
      case "Ton":
        res = 0.000453592 * value;
        break;
      case "lb":
        res = value;
        break;
      case "g":
        res = 453.592 * value;
        break;
      case "oz":
        res = 16 * value;
        break;
    }
    setState(() {});
  }

  void grampop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "Kg":
        res = .001 * value;
        break;
      case "Ton":
        
        res = 0.000001 * value;
        break;
      case "lb":
        res = .00220462 * value;
        break;
      case "g":
        res = value;
        break;
      case "oz":
        res = 0.035274 * value;
        break;
    }
    setState(() {});
  }

  void ouncepop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "Kg":
        res = 0.0283495 * value;
        break;
      case "Ton":
        res = 0.00002835 * value;
        break;
      case "lb":
        res = 0.0625 * value;
        break;
      case "g":
        res = 28.3495 * value;
        break;
      case "oz":
        res = value;
        break;
    }
    setState(() {});
  }

  void tonnepop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "Kg":
        res = 1000 * value;
        break;
      case "Ton":
        res = value;
        break;
      case "lb":
        res = 2204.62 * value;
        break;
      case "g":
        res = 100000 * value;
        break;
      case "oz":
        res = 35274 * value;
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
                    child: Text("Weight" , style: TextStyle(fontSize: 40,),),
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
                          hintText: "Enter Weight :",
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
                      width: 140,
                      child: ListTile(
                      title: Text("$selectedUnit"),
                      trailing:PopupMenuButton<String>(
                        onSelected: (unit) => setState(() {
                          selectedUnit = unit;
                          popmain(unit);
                        }),
                        itemBuilder: (context) => [
                          const PopupMenuItem(value: "Kg", child: Text("Kg")),
                          const PopupMenuItem(value: "Ton", child: Text("Ton")),
                          const PopupMenuItem(value: "lb", child: Text("lb")),
                          const PopupMenuItem(value: "g", child: Text("g")),
                          const PopupMenuItem(value: "oz", child: Text("oz"))
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
                    width: 140,
                    child: ListTile(
                      title: Text("$convertUnit"), 
                      trailing: PopupMenuButton<String>(
                      onSelected: (unit) => setState(() {
                        convertUnit = unit;
                        popmain(selectedUnit);
                      }),
                      itemBuilder: (context) => [
                        const PopupMenuItem(value: "Kg", child: Text("Kg")),
                        const PopupMenuItem(value: "Ton", child: Text("Ton")),
                        const PopupMenuItem(value: "lb", child: Text("lb")),
                        const PopupMenuItem(value: "g", child: Text("g")),
                        const PopupMenuItem(value: "oz", child: Text("oz"))
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