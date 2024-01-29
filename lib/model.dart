

import 'package:flutter/cupertino.dart';

class Model
{
String? image;
String? text;

Model(this.image,this.text);

}

List lis = modelData.map((a) => Model(a["image"], a["text"])).toList();


var modelData = [
  {"image":"assets/img.png","text":"hello"},
  {"image":"assets/study.png","text":"hello2"},
  {"image":"assets/img.png","text":"hello"},
  {"image":"assets/img.png","text":"hello"},
  {"image":"assets/img.png","text":"hello"},


];

