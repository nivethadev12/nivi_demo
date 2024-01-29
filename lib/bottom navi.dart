import 'package:demo/amazon.dart';
import 'package:demo/imge.dart';
import 'package:demo/instagram.dart';
import 'package:demo/listile.dart';

import 'package:demo/meesho.dart';
import 'package:demo/spotify.dart';

import 'package:flutter/material.dart';
class pg extends StatefulWidget {
  const pg({super.key});
  @override
  State<pg> createState() => _pgState();
}

class _pgState extends State<pg> {
  int _index=0;

  final pages=[
    meesho(),
    spoti(),
    insta(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_sharp),label: "Entertainment"),
        ],
        currentIndex: _index,
        onTap: click,
      ),


    );
  }
}
