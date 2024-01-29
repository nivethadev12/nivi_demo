import 'package:demo/model.dart';
import 'package:flutter/material.dart';

class Mode{
  String? imag;
  String? te;

  Mode(this.imag,this.te);

}

List meesh = modelData.map((e) => Mode(e["imag"], e["te"],)).toList();

var modelData = [
  {"imag":"assets/meesho pro1.png","te":"All"},
  {"imag":"assets/meesho pro2.png","te":"Women"},
  {"imag":"assets/meesho pro3.png","te":"Men"},
  {"imag":"assets/img_20.png","te":"Kids"},
  {"imag":"assets/img_21.png","te":"Electronics"},
  {"imag":"assets/img_22.png","te":"Home Products"},
  {"imag":"assets/img.png","te":"Sort"},
  {"imag":"assets/Spoti logo .png","te":"Custom Sort"},
  {"imag":"assets/img_23.png","te":"Sports"},
  {"imag":"assets/img_24.png","te":"Gym"},



];