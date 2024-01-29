import 'package:flutter/material.dart';
class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 900,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img.png")
                    )
                  ),
                  child: Container(
                    height: 200,
                    width: 400,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Big Journeys Begin with Small Steps..",style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                  ),
                  ),
              ),
              Container(
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/study.png")
                        )
                      ),
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/study.png")
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/study.png")
                                  )
                                ),
                                child: Center(child: Text("Dream Big,Work Hard,and Make it Happen",style: TextStyle(fontSize: 15,color: Colors.white),)),
                              ),
                            ),
                          ],
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/study.png")
                                      )
                                  ),
                                  child: Center(child: Text("Create your own Path",style: TextStyle(fontSize: 18,color: Colors.white),)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/study.png")
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/study.png")
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/study.png")
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            )
                      ],
                    )
                  ],
                ),
              ]
                ),
          ),
        ],
      ),
    ]
    ));
  }
}
