import 'package:demo/mod.meesho.dart';
import 'package:flutter/material.dart';

class Inst {
  String? image;
  String? text;
  Inst(this.image,this.text);
}
List ins=modata.map((e) => Inst(e["image"], e["text"])).toList();

var modata=[
  {"image":"assets/img_29.png","text":"Naruto"},
  {"image":"assets/img_30.png","text":"Sasuke"},
  {"image":"assets/img_31.png","text":"Shikamaru"},
  {"image":"assets/img_32.png","text":"Sakura"},
  {"image":"assets/img_28.png","text":"Naruto"},
  {"image":"assets/img_29.png","text":"Naruto"},
  {"image":"assets/img_30.png","text":"Sasuke"},
  {"image":"assets/img_31.png","text":"Skikamaru"},
  {"image":"assets/img_32.png","text":"Sakura"},

];