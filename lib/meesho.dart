

import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/amazon.dart';
import 'package:demo/color.dart';
import 'package:demo/mod.meesho.dart';
import 'package:demo/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class meesho extends StatefulWidget {
  const meesho({super.key});

  @override
  State<meesho> createState() => _meeshoState();

}

class _meeshoState extends State<meesho> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Color(0xff83d9e3),
                Color(0xffa6e8cf),
              ]
          ),
        ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/study.png"), fit: BoxFit.fill),
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Text(
          "Hello,\nLet's shop!",style: TextStyle(fontSize: 15,color: abc),
          softWrap: true,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    prefixIcon: Icon(Icons.search),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(child: Icon(Icons.mic)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Icon(Icons.camera)),
                          )
                        ],
                      ),
                      hintText: "Search by keyword or product",
                      hintStyle: asfg,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
              ),
            ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        child:  GestureDetector(onTap: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>ama()));
                            },
                child: Container(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: meesh.length,
                      itemBuilder: (BuildContext con, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(meesh[index].imag),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                meesh[index].te,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            )
          ],
        ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:  GestureDetector(onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ama()));
                },
                  child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16/9,
                viewportFraction: 5,
                initialPage: 0,
                enableInfiniteScroll: true,
                animateToClosest: true,
                reverse: false,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 12,
              itemBuilder: (context, int itemIndex, int pageViewIndex) {
                return Container(
                  height: 900,
                  width:  1000,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage("assets/img_25.png"),
                      fit: BoxFit.fill,
                    ),
                  ),

                );
              },
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img_25.png"),
                  fit: BoxFit.fitWidth
                )
              ),
              child: SizedBox(
                height: 300,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Discount 20%",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            )
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Meesho Daily Deals",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            )),
                  GestureDetector(onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ama()));
                  },
                    child: Container(
                          height: 155,
                          child: ListView.builder(
                                itemCount: meesh.length,
                                scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(meesh[index].imag),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(meesh[index].te,style: TextStyle(fontSize: 15,color: abcd),),
                            )
                          ],
                        ),
                    );
                  }
                  )
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bachat Bazaar",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
          ),
        ),
        GestureDetector(onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ama()));
                  },
          child: Container(
            height: 155,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: meesh.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(meesh[index].imag),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(meesh[index].te,style: TextStyle(fontSize: 15,color: abcd),),
                        )
                      ],
                    ),
                  );

                }),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Products for you",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              color: Color(0xff859da9),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Sort",style: TextStyle(fontSize: 15,color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Category",style: TextStyle(fontSize: 15,color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Gender",style: TextStyle(fontSize: 15,color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Filter",style: TextStyle(fontSize: 15,color: Colors.white)),
                ),
              ],
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 900,
            width: 450,
            child: GestureDetector(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ama()));
            },
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: meesh.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(height : 150,width: 450,
                            child: Image(image: AssetImage(meesh[index].imag),fit: BoxFit.fill,)),
                          Row(
                            children: [
                              Text("All,\nRs.25,000",)
                            ],
                          )
                      ],
                    );
                  }),
            ),
          ),
        ),

      ]),
    );
  }
}
