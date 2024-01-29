
import 'package:demo/bottom navi.dart';
import 'package:flutter/material.dart';
class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Center(
          child: Container(
            height: 300,
            width: 500,
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (name){
                        if(name!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$").hasMatch(name))
                        {
                          return"Please enter valid mail id";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter Mail id",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (pass){
                        if(pass!.isEmpty ||
                            !RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(pass))
                        {
                          return"Please enter valid Password";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      if(_key!.currentState!.validate())
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> pg()),
                        );
                      }
                      else ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("correct mail id and password")));
                    }, child: Text("login")),
                  )
                ],
              ),
          ),
        ),
        ),
      );
  }
}
