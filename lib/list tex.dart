import 'dart:math';

import 'package:flutter/material.dart';

// class Listview {
//   String? text;
//   Listview(this.text);
// }
//
// var modaldata = [
//   {"text": "a.length"}
// ];

class Texcal extends StatefulWidget {
  const Texcal({Key? key}) : super(key: key);

  @override
  State<Texcal> createState() => _TexcalState();
}

class _TexcalState extends State<Texcal> {
  List<int> a = <int>[];
  TextEditingController ef = TextEditingController();

  void as() {
    List<int> sortednum = List.from(a);
    sortednum.sort();

    setState(() {
      a = sortednum;
      print('original num=$a');
      print('numbers in asc order:$sortednum');
    });
  }

  void des() {
    List<int> sortednum = List.from(a);
    sortednum.sort();
    sortednum = sortednum.reversed.toList();

    setState(() {
      a = sortednum;
      print('original num=$a');
      print('numbers in des order:$sortednum');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                controller: ef,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter text",
                )),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  String text = ef.text;
                  a.add(int.parse(ef.text));
                  ef.clear();
                });
              },
              child: Text("Ok")),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(border: Border.all()),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NextPage(data: a[index]),
                              ),
                            );
                          },
                          child: Text(a[index].toString()),
                        ),
                      ],
                    );
                  }),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    as();
                  },
                  child: Text("Ascending")),
              ElevatedButton(
                  onPressed: () {
                    des();
                  },
                  child: Text("Descending"))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var i = a.reduce((value, element) => value < element ? value : element);
                    ef.text = i.toString();
                  },
                  child: Text("Minimum")),
              ElevatedButton(
                  onPressed: () {
                    var j = a.reduce((value, element) => value > element ? value : element);
                    ef.text = j.toString();
                  },
                  child: Text("Maximum"))
            ],
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final int data;

  NextPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Page')),
      ),
      body: Center(
        child: Text('$data'),
      ),
    );
  }
}
