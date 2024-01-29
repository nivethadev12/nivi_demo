import 'package:flutter/material.dart';
class Mod {
  String? ima;
  String? text;
  String? tex;
  Mod (this.ima,this.text,this.tex);
}

List li = modaldata.map((e) => Mod(e["ima"], e["text"],e["tex"])).toList();

var modaldata = [
  {"ima":"assets/spoti dhanush .png","text":"Why this Kolaveri Di?","tex":"Anirudh"},
  {"ima":"assets/spoti surya.png","text":"Nenjukkul Peidhidum","tex":"Hiphop"},
  {"ima":"assets/spoti dhanush2.png","text":"Otha Sollala","tex":"Sid Sriram"},
  {"ima":"assets/spoti maddy.png","text":"Yaanji","tex":"G.V.Prakash"},
  {"ima":"assets/spoti naan pizhai.png","text":"Naan Pizhai","tex":"Anirudh"},
  {"ima":"assets/spoti private party.png","text":"Private Party","tex":"Anirudh"},
  {"ima":"assets/spoti karthi.png","text":"Viruman","tex":"Anirudh"},
  {"ima":"assets/spoti shiva.png","text":"So Baby","tex":"Anirudh"},
  {"ima":"assets/spoti gajini.png","text":"Nenjukkul Peidhidum","tex":"Anirudh"},
  {"ima":"assets/spoti naan pizhai.png","text":"Otha Sollala","tex":"Anirudh"},
  {"ima":"assets/spoti private party.png","text":"Private Party","tex":"Anirudh"},
  {"ima":"assets/spoti karthi.png","text":"Yaanji","tex":"Anirudh"},
  {"ima":"assets/spoti maddy.png","text":"So Baby","tex":"Anirudh"},


];