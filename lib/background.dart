

import 'package:flutter/material.dart';
class ini extends StatefulWidget {
  const ini({super.key});

  @override
  State<ini> createState() => _iniState();
}

class _iniState extends State<ini> {
  final _key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Container(
          height: 900,
          width: 800,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img.png"),
                  fit: BoxFit.fill
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (a) {

                    if (a!.isEmpty ||
                        !RegExp(
                            r"^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$")
                            .hasMatch(a))
                    {
                      return "Please enter valid mailid";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "enter mail id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (va)
                      {
                        if(va!.isEmpty ||
                        !RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(va))
                        {
                          return "Please enter valid password";
                          }
                      },
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(_key.currentState!.validate())
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ini()),
                      );
                    }
                  else ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("ok valid mailid and Password"))
                  );
                }, child: Text("login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

