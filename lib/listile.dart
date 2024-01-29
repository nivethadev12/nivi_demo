
import 'package:flutter/material.dart';

import 'bottom navi.dart';
class rep extends StatefulWidget {
  const rep({super.key});

  @override
  State<rep> createState() => _repState();
}

class _repState extends State<rep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector
          (
            onTap: () {
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> pg()));
                // Toggle light when tapped.
              });
            },
            child: Icon(Icons.chevron_left,size: 40,)),
        title: Center(child: Text("Menu",style: TextStyle(fontSize: 25,color: Colors.black),)),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("REPORTS",style: TextStyle(fontSize: 20,color: Colors.black),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Center(child: Text('Report 1')),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Center(child: Text('Report 2')),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("HELP",style: TextStyle(fontSize: 20,color: Colors.black),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Center(child: Text("logout")),
                   trailing: Icon(Icons.chevron_right),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
