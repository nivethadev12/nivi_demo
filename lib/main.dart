
import 'package:demo/amazon.dart';
import 'package:demo/instagram.dart';
import 'package:demo/listile.dart';
import 'package:demo/login.dart';
import 'package:demo/meesho.dart';
import 'package:demo/spotify.dart';
import 'package:demo/text%20ctrl.dart';

import 'package:flutter/material.dart';

import '3 textformfield with list.dart';
import 'BMI.dart';
import 'botnavi calc.dart';
import 'gst.dart';
import 'list tex.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ThreeText(),
    );
  }
}

