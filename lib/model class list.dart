import 'package:demo/mod.am.dart';

class listview {
  String? text;
  listview(this.text);
}
List listv=modaldata.map((e) => listview( e["text"])).toList();
var modaldata=[
  {"text":"a.length"}
];