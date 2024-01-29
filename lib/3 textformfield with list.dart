import 'package:flutter/material.dart';

class StringInt extends StatelessWidget {
  final String value;
  final String value1;
  final String value2;

  const StringInt({Key? key, required this.value, required this.value1, required this.value2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Values")),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 500,
          child: Column(
            children: [
              Center(child: Text("$value")),
              Center(child: Text("$value1")),
              Center(child: Text("$value2")),
            ],
          ),
        ),
      ),
    );
  }
}

class ThreeText extends StatefulWidget {
  const ThreeText({Key? key}) : super(key: key);

  @override
  State<ThreeText> createState() => _ThreeTextState();
}

class _ThreeTextState extends State<ThreeText> {
  final ctrl = TextEditingController();
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();
  final ctrl3 = TextEditingController();
  final ctrl4 = TextEditingController();
  final ctrl5 = TextEditingController();

  List<String> a = [];
  List<String> b = [];
  List<String> c = [];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter a Name",
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter a mail id",
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter a Password",
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  a.add(ctrl.text);
                  ctrl.clear();
      
                  b.add(ctrl1.text);
                  ctrl1.clear();
      
                  c.add(ctrl2.text);
                  ctrl2.clear();
                });
              },
              child: Text("Click"),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: a.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StringInt(value: a[index],value1: b[index],value2: c[index],)));
                      },
                      child: ListTile(
                        title: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 270),
                                child: Text(a[index].toString()),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Container(
                                          height: 500,
                                          width: 500,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller: ctrl3,
                                                decoration: InputDecoration(),
                                              ),
                                              TextFormField(
                                                controller: ctrl4,
                                                decoration: InputDecoration(),
                                              ),
                                              TextFormField(
                                                controller: ctrl5,
                                                decoration: InputDecoration(),
                                              ),
                                              SizedBox(height: 20),
                                              Row(mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                      a.add(ctrl3.text);
                                                      b.add(ctrl4.text);
                                                      c.add(ctrl5.text);
                                                      });
                                                    },
                                                    child: Text("Edit"),

                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {

                                                        a[index] = ctrl3.text;
                                                        b[index] = ctrl4.text;
                                                        c[index] = ctrl5.text;
                                                      });
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text("Save"),
                                                  )],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Icon(Icons.edit),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    a.removeAt(index);
                                    b.removeAt(index);
                                    c.removeAt(index);
                                  });
                                },
                                child: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Text(b[index].toString()),
                              ],
                            ),
                            Row(
                              children: [
                                Text(c[index].toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
