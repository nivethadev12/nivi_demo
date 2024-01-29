import 'package:demo/meesho.dart';
import 'package:demo/mod.insta.dart';
import 'package:flutter/material.dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
              return [SliverAppBar(
                  backgroundColor: Color(0xff000000),
                pinned: true,
                expandedHeight: 490,
                leading: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> meesho()));
                  },
                  child: Icon(Icons.arrow_back,color: Color(0xfff7f7f7),
                  ),
                ),
                title: Text("itachi_editz",style: TextStyle(color: Color(0xfff7f7f7)),),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.more_vert,color: Color(0xfff7f7f7),),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: [
                      SizedBox(height: 90,),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/img_34.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                        SizedBox(height: 50,width: 50,),
                        Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("125",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text("Post",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17)),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,width: 30,),
                        Column(
                          children: [
                            Text("12k",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text("Followers",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17)),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,width: 30,),
                        Column(
                          children: [
                            Text("154",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text("Following",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 17)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("ITACHI UCHIHA",
                            style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                        ),
                      ],
                    ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Digital Creator",style: TextStyle(color: Color(0xfffa1a1a1)),),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(".Follow me for best #anime content",style: TextStyle(color: Color(0xfff7f7f7)),),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(".Turn on Notification..",style: TextStyle(color: Color(0xfff7f7f7)),),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 35,
                            width: 183,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff0394f7),
                            ),
                            child: Center(
                              child: Text("Follow",style: TextStyle(
                                  color: Color(0xffebebeb)
                              ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              width: 183,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text("Message",style: TextStyle(
                                    color: Color(0xffebebeb)
                                ),),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.add,size: 9,color: Color(0xffebebeb),),
                                Icon(Icons.perm_identity_outlined,size: 15,color: Color(0xffebebeb),)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 120,
                        child: ListView.builder(
                            itemCount: ins.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext con,index){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(ins[index].image),
                                            fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                  ),
                                  Text((ins[index].text),style: TextStyle(
                                      color: Color(0xffebebeb)
                                  ),),
                                ],
                              );
                            } ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                      tabs: [Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(Icons.grid_on_sharp,size: 25,color: Color(0xff9e9e9e)),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Icon(Icons.movie_creation_outlined,size: 27,color: Color(0xff9e9e9e),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Icon(Icons.perm_contact_cal_outlined,size: 25,color: Color(0xff9e9e9e),),
                        )
                      ],
                    ),
                  ),
              ];
            }, body: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TabBarView(
              children: [
                Container(
                  height: 500,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 12,
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                        ),
                        itemCount: ins.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                             Container(
                               height: 120,
                               width: 150,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(ins[index].image),
                                   fit: BoxFit.fill
                                 )
                               ),
                             )
                            ],
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisCount: 3,
                          crossAxisSpacing: 5
                      ),
                      itemCount: ins.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(ins[index].image),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisCount: 3,
                          crossAxisSpacing: 5
                      ),
                      itemCount: ins.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(ins[index].image),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
                        ),
            )
          ),
        ),
      ),
    );
  }
}
