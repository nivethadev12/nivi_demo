import 'dart:math';

import 'package:flutter/material.dart';
class tex extends StatefulWidget {
  const tex({super.key});

  @override
  State<tex> createState() => _texState();
}

class _texState extends State<tex> {

final TextEditingController mycontrl=TextEditingController();
String num1="",num2="",opt="",res2="";
bool clck=false;



@override
  void clearText()
{
  mycontrl.clear();
}
  @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,

          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.compare_arrows_outlined, color: Colors.black,),
            title: Row(
              children: [
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () {},
                    child: Text("=", style: TextStyle(color: Colors.orange),))
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Icon(Icons.widgets_outlined, color: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Icon(
                  Icons.maps_home_work_outlined, color: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert, color: Colors.black,),
              ),
            ],
          ),
          body: Column(
            children: [
              SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextField(
                  controller: mycontrl,
                  decoration: InputDecoration(
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    num1 = "";
                    num2 = "";
                    mycontrl.text = '';
                    opt="";
                    clck=false;
                  },
                      child: Text(
                        "AC", style: TextStyle(color: Colors.orange),)),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '*';
                    opt = "*";
                    clck = true;

                  }, child: Text("*", style: TextStyle(color: Colors.orange))),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '%';
                    opt = "%";
                    clck = true;
                  }, child: Text("%", style: TextStyle(color: Colors.orange))),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '/';
                    opt = "/";
                    clck = true;
                  }, child: Text("/", style: TextStyle(color: Colors.orange))),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "7";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "7";
                      mycontrl.text = num1;
                    }
                  }, child: Text("7", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "8";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "8";
                      mycontrl.text = num1;
                    }
                  }, child: Text("8", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "9";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "9";
                      mycontrl.text = num1;
                    }
                  }, child: Text("9", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '√';
                    opt = "√";

                  }, child: Text("√", style: TextStyle(color: Colors.orange))),
                ],
              ),

              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "4";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "4";
                      mycontrl.text = num1;
                    }
                  }, child: Text("4", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "5";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "5";
                      mycontrl.text = num1;
                    }
                  }, child: Text("5", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "6";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "6";
                      mycontrl.text = num1;
                    }
                  }, child: Text("6", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '-';
                    opt = "-";
                    clck = true;
                  }, child: Text("-", style: TextStyle(color: Colors.orange))),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "1";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "1";
                      mycontrl.text = num1;
                    }
                  }, child: Text("1", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "2";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "2";
                      mycontrl.text = num1;
                    }
                  }, child: Text("2", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "3";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "3";
                      mycontrl.text = num1;
                    }
                  }, child: Text("3", style: TextStyle(color: Colors.black))),
                  ElevatedButton(onPressed: () {
                    mycontrl.text = '+';
                    opt = "+";
                    clck = true;
                  }, child: Text("+", style: TextStyle(color: Colors.orange))),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    mycontrl.text=mycontrl.text.substring(0, mycontrl.text.length - 1);
                  },
                      child: (Icon(
                        Icons.backspace_outlined, color: Colors.orange,))),
                  ElevatedButton(onPressed: () {
                    if (clck) {
                      num2 += "0";
                      mycontrl.text = num2;
                    }
                    else {
                      num1 += "0";
                      mycontrl.text = num1;
                    }
                  }, child: Text("0", style: TextStyle(color: Colors.black))),

                  ElevatedButton(onPressed: () {
                    if(clck){
                      num2+= ".";
                      mycontrl.text=num2;
                    }
                    else{
                      num1 +=".";
                      mycontrl.text=num1;
                    }
                  }, child: Text(".", style: TextStyle(color: Colors.black))),


                  ElevatedButton(onPressed: () {
                    if (opt == "+") {
                       double a = double.parse(num1);
                       double b = double.parse(num2);

                       double res = a + b;

                      mycontrl.text = res.toString();
                    };
                    if (opt == "-") {
                      double a = double.parse(num1);
                      double b = double.parse(num2);

                      double res = a - b;

                      mycontrl.text = res.toString();
                    };
                    if (opt == "*") {
                      double a = double.parse(num1);
                      double b = double.parse(num2);

                      double res = a * b;

                      mycontrl.text = res.toString();
                    };
                    if (opt == "/") {
                      double a = double.parse(num1);
                      double b = double.parse(num2);

                      double res = a / b;

                      mycontrl.text = res.toString();
                    };
                    if (opt == "%") {
                      double a = double.parse(num1);
                      double res1 = a / 100;
                      
                      mycontrl.text = res1.toString();
                    };

                    if (opt == "√") {
                      double a = double.parse(num1);

                      double res = sqrt(a);
                      mycontrl.text = res.toString();
                    };
                    if (opt == "^") {
                      double a = double.parse(num1);

                      double res = a*a;
                      mycontrl.text = res.toString();
                    };
                    if (opt == "+/-") {
                      double a = double.parse(num1);

                      double res = a*a;
                      mycontrl.text = res.toString();
                    };
                    if(opt=="mod")
                    {
                      double b =double.parse(num1);
                      double a =double.parse(num2);
                      double res = b%a;
                      mycontrl.text=res.toString();
                    }

                  }, child: Text("=", style: TextStyle(color: Colors.orange))),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                   if(clck){
                     num2=(double.parse(num2)* -1).toString();
                     mycontrl.text=num2;
                   }
                   else{
                     num1=(double.parse(num1)* -1).toString();
                     mycontrl.text=num1;
                   }
                  }, child: Text("+/-", style: TextStyle(color: Colors.orange))),

                  ElevatedButton(onPressed: () {
                  opt="^";
                  clck=true;
                  mycontrl.text="^";
                  }, child: Text("^", style: TextStyle(color: Colors.orange))),
                  ElevatedButton(onPressed: (){
                    opt="mod";
                    clck=true;
                    mycontrl.text="mod";
                  }, child: Text("mod", style: TextStyle(color: Colors.orange)))

                    ],
              ),

            ],
          ),
        ),
      );
    }
  }

