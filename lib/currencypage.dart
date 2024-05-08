import 'package:flutter/material.dart';


class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<StatefulWidget> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  TextEditingController h = TextEditingController();
  double res = 0.0; // Initialize res to avoid null value
  String selectedUnit = "USD"; // Default selected unit
  String convertUnit = "USD";

  void popmain(String unit) {
    switch (unit) {
      case "USD":
        dpop(convertUnit);
        break;
      case "EGP":
        epop(convertUnit);
        break;
      case "AED":
        apop(convertUnit);
        break;
      case "KWD":
        kpop(convertUnit);
        break;
        case "SAR":
        spop(convertUnit);
        break;
      
    }
  }

  void dpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "USD":
        res = value;
        break;
      case "EGP":
        res = value * 47.94;
        break;
      case "AED":
        res = value * 3.67;
        break;
      case "KWD":
        res = value * 0.31;
        break;
      case "SAR":
        res = value * 3.75 ;
        break;
    }
    setState(() {});
  }
  void epop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "USD":
        res = value  * 0.021;
        break;
      case "EGP":
        res = value;
        break;
      case "AED":
        res = value * 0.077;
        break;
      case "KWD":
        res = value * 0.0064;
        break;
      case "SAR":
        res = value * 0.078 ;
        break;
    }
    setState(() {});
  }
  void apop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "USD":
        res = value * 0.27;
        break;
      case "EGP":
        res = value * 13.05;
        break;
      case "AED":
        res = value;
        break;
      case "KWD":
        res = value * 0.084;
        break;
      case "SAR":
        res = value * 1.02 ;
        break;
    }
    setState(() {});
  }
  void kpop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "USD":
        res = value * 3.25;
        break;
      case "EGP":
        res = value * 155.96;
        break;
      case "AED":
        res = value * 11.95;
        break;
      case "KWD":
        res = value;
        break;
      case "SAR":
        res = value * 12.20 ;
        break;
    }
    setState(() {});
  }
  void spop(String unit) {
    double value = double.tryParse(h.text) ?? 0.0; // Handle invalid input
    if(value.isNegative){
      value = value * -1;
    }
    switch (unit) {
      case "USD":
        res = value * 0.27;
        break;
      case "EGP":
        res = value * 12.79;
        break;
      case "AED":
        res = value * 0.98;
        break;
      case "KWD":
        res = value * 0.082;
        break;
      case "SAR":
        res = value ;
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
                    child: Text("Currency" , style: TextStyle(fontSize: 40,),),
                  ),
                ),
        
                SizedBox(height: 200,),
        
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
                          hintText: "Enter Currency :",
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
                    width: 150,
                    child: ListTile(
                      title: Text("$selectedUnit"),
                      trailing: PopupMenuButton<String>(
                        onSelected: (unit) => setState(() {
                          selectedUnit = unit;
                          popmain(unit);
                        }),
                        itemBuilder: (context) => [
                        const  PopupMenuItem(value: "USD", child: Text("USD")),
                        const  PopupMenuItem(value: "EGP", child: Text("EGP")),
                        const  PopupMenuItem(value: "AED", child: Text("AED")),
                        const  PopupMenuItem(value: "KWD", child: Text("KWD")),
                        const  PopupMenuItem(value: "SAR", child: Text("SAR")),
                    
                        ],
                      ),
                    ),
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
                    ),),
        
        
                    Container(
                    width: 150,
                    child: ListTile(
                      title: Text("$convertUnit"), 
                      trailing: 
                        PopupMenuButton<String>(
                        onSelected: (unit) => setState(() {
                        convertUnit = unit;
                        popmain(selectedUnit);
                      }),
                      itemBuilder: (context) => [
                      const  PopupMenuItem(value: "USD", child: Text("USD")),
                      const  PopupMenuItem(value: "EGP", child: Text("EGP")),
                      const  PopupMenuItem(value: "AED", child: Text("AED")),
                      const  PopupMenuItem(value: "KWD", child: Text("KWD")),
                      const  PopupMenuItem(value: "SAR", child: Text("SAR"))
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