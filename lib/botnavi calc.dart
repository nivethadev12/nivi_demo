
import 'package:flutter/material.dart';
import 'BMI.dart';
import 'gst.dart';
import 'list tex.dart';
import 'text ctrl.dart';
class pg extends StatefulWidget {
  const pg({super.key});
  @override
  State<pg> createState() => _pgState();
}

class _pgState extends State<pg> {
  int _index=0;

  final pages=[
    tex(),
    gstcalc(),
    bmi(),
  ];

  void click(jkl)
  {
    setState(() {
      _index=jkl;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "General"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp),label: "GST"),
          BottomNavigationBarItem(icon: Icon(Icons.monitor_weight_outlined),label: "BMI"),
        ],
        currentIndex: _index,
        onTap: click,
      ),


    );
  }
}
