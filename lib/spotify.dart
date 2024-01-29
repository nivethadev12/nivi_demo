import 'package:demo/meesho.dart';
import 'package:demo/mod.am.dart';
import 'package:flutter/material.dart';
class spoti extends StatefulWidget {
  const spoti({super.key});

  @override
  State<spoti> createState() => _spotiState();
}

class _spotiState extends State<spoti> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context,bool innerBoxIsSrolled){
            return [
              SliverAppBar(
                leading: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>meesho()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xfffffff9),
                  ),
                ),
                pinned: true,
                expandedHeight: 500,
                stretch: true,
                titleSpacing: 15,
                backgroundColor: Colors.black38,
                // title: Text("Anirudh Ravichandran Mix",
                //                     style: TextStyle(
                //                       color: Color(0xfffcffff)
                //                     ),),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff5e9e86),
                        Color(0xff121212),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                  ),
                  child: Stack(
                    children: [
                      FlexibleSpaceBar(
                        centerTitle: false,
                        title:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Anirudh Ravichandran Mix",
                            style: TextStyle(
                              color: Color(0xfffffff9),
                              fontSize: 20
                            ),),
                          ],
                        ),
                        background: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 330,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Color(0xfffffff9),
                                          ),
                                          hintText: "Find on the page",
                                          hintStyle: TextStyle(
                                            color: Color(0xfffffff9),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors.white.withOpacity(
                                                (0.2),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Sort",
                                          style: TextStyle(
                                            color: Color(0xfffffff9),
                                          ),
                                        ),
                                      ),
                                    )),
                                    ]
                              ),
                            ),
                            Stack(
                              children: [
                                    Container(
                                      height: 250,
                                      width: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/Aniruth spoti.png")
                                        ),
                                      ),
                                    ),
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Text("Anirudh\nRavichandran Mix",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                       fontWeight: FontWeight.bold)),
                                ),
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/Spoti logo .png")
                                    )
                                  ),
                                ))
                                ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  RichText(text:
                                  TextSpan(text: "Harris Jayaraj, Sid Sriram  ",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff23cd5d),
                                    fontSize: 13
                                  ),
                                    children: [
                                      TextSpan(
                                        text: "and ",
                                        style: TextStyle(
                                            color: Color(0xff929495),
                                            fontSize: 13
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Hiphop Tamizha",
                                        style: TextStyle(
                                            color: Color(0xff23cd5d),
                                            fontSize: 13
                                        ),
                                      )
                                    ]
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/spoti logo2.png")
                                      )
                                    ),
                                  ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: RichText(text: TextSpan(
                                     text: "Made for ",
                                     style: TextStyle(
                                       color: Color(0xffa9abaa)
                                     ),
                                     children: [
                                       TextSpan(
                                         text: "Nivii",
                                         style: TextStyle(
                                           color: Color(0xfff7fefc)
                                         )
                                       )
                                     ]
                                   ),),
                                 ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("3h 20min",
                                  style: TextStyle(
                                        color: Color(0xffa9abaa)
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              )
            ];
          },        body: SingleChildScrollView(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                              children: [
                                SizedBox(width: 15,),
                                Icon(Icons.add_circle_outline_sharp,
                                color: Color(0xffa9abaa),),
                                SizedBox(width: 15,),
                                Icon(Icons.arrow_circle_down_outlined,
                                color: Color(0xffa9abaa),),
                                SizedBox(width: 15,),
                                Icon(Icons.share_outlined,
                                color: Color(0xffa9abaa),),
                                SizedBox(width: 15,),
                                Icon(Icons.more_vert,
                                color: Color(0xffa9abaa),),
                                SizedBox(width: 160),
                                Icon(Icons.shuffle_outlined,
                                color: Color(0xff25d861),),
                                SizedBox(width: 5,),
                                Icon(Icons.play_circle,
                                size: 30,
                                color: Color(0xff25d861),),
                              ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                    itemCount: li.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context,index)=>
                                Card(
                                  color: Color(0xff121212),
                                  child: SingleChildScrollView(
                                  child: ListTile(
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image(
                                        image: AssetImage(li[index].ima),
                                      ),
                                    ),
                                    title: Text(li[index].text,
                                      style: TextStyle(
                                          color: Color(0xfff3f3f3)
                                      ),),
                                    subtitle: Container(
                                        height: 20,
                                        width: 20,
                                        child: RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: li[index].tex,
                                                    style: TextStyle(
                                                        color: Color(0xff717171)
                                                    )
                                                )
                                              ]
                                          ),
                                        )
                                    ) ,
                                    trailing: Icon(Icons.more_vert,
                                      color: Color(0xffadadad),),
                                    ),
                                  ),
                                ),),

                              )],
                          ),
                        ),
                      ),
          )
        )
      ),
    );
  }
}
