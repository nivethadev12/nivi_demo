import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/meesho.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ama extends StatefulWidget {
  const ama({super.key});

  @override
  State<ama> createState() => _amaState();
}


class _amaState extends State<ama> {

  String dropdownValue = "1";


  var items = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
int currentindex = 0;
  @override
  Widget build(BuildContext context) {


    var onChanged;
    return SafeArea(
      child: Scaffold(
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
           // backgroundColor:Color(0xff9be3d5),
          // automaticallyImplyLeading: true,
          leading:  Padding(
            padding: const EdgeInsets.only(left : 10),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          title:
          Container(
            // height: double.infinity,
            // width:  double.infinity,

            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 320,
                  child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.camera),
                              ),
                              Icon(Icons.mic_none_outlined)
                            ],
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          hintText: "Search Amazon.in",helperStyle: TextStyle(
                          color: Colors.blueAccent.shade400
                      )
                      )
                  ),
                ),
              ],
            ),

          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [Column(
              children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: RichText(text: TextSpan(
                       text: "Visit Sfane Store",
                       style: TextStyle(
                         color: Color(0xff317e8b)
                       )
                     )),
                   ),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RatingBar.builder(
                             initialRating: 3,
                             minRating: 1,
                             direction: Axis.horizontal,
                             allowHalfRating: true,
                             itemCount: 5,
                             itemSize: 18,
                             itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber,), onRatingUpdate: (rating){
                           print(rating);
                             }
                             ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("8521"),
                        ],
                      ),

                 ],
               ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      RichText(text: TextSpan(
                          text: "Sfane Polyster 23 cm Duffle/Shoulder/Gym Bag for Men & Women with Separate Shoe Compartment.",
                        style: TextStyle(
                          color: Colors.black54
                        ),
                        children: [
                          TextSpan(
                            text: "\n#1 Best Seller ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54)
                          ),
                          TextSpan(
                            text: "in Sports Duffle",style: TextStyle(color: Color(0xff028398),fontWeight: FontWeight.bold,fontSize: 15)
                          )
                        ]
                      ),
                      ),

                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                            ),
                            child: CarouselSlider.builder(
                              options: CarouselOptions(
                              aspectRatio: 20/20,
                              viewportFraction: 11,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              animateToClosest: true,
                              reverse: false,
                              autoPlay: false,
                              autoPlayAnimationDuration: Duration(seconds: 3),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index,reason){
                                setState(() {
                                  currentindex=index;
                                });
                              }
                            ),
                              itemCount: 5,
                              itemBuilder: (context, int itemIndex, int pageViewIndex) {
                                return Container(
                                  height: 700,
                                  width:  500,

                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                     image: DecorationImage(
                                     image: AssetImage("assets/bag.png"),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.share,)),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Icon(Icons.push_pin_sharp))
                        ],
                      ),
                         DotsIndicator(
                          dotsCount: 5,
                          position: currentindex,
                         ),
                      Divider(
                         height: .2,

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Color : Navy Blue",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/bag.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),

                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/bag.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/bag.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/bag.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/bag.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: ("₹357\n"),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "₹1800",
                                          style: TextStyle(
                                            decoration: (
                                              TextDecoration.lineThrough
                                            ),fontSize: 13,
                                            color: Colors.black54
                                          ),
                                        ),
                                      ]
                                    ),
                                  ),
                                  RichText(text: TextSpan(
                                      text: ("₹370\n"),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black87
                                      ),
                                      children: [
                                        TextSpan(
                                            text: "₹2000",
                                            style: TextStyle(
                                              decoration: (
                                                  TextDecoration.lineThrough
                                              ),fontSize: 13,
                                                color: Colors.black54
                                            )
                                        ),
                                      ]
                                  )),
                                  RichText(text: TextSpan(
                                      text: ("₹400\n"),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black87
                                      ),
                                      children: [
                                        TextSpan(
                                            text: "₹1070",
                                            style: TextStyle(
                                              decoration: (
                                                  TextDecoration.lineThrough
                                              ),fontSize: 13,
                                                color: Colors.black54
                                            )
                                        ),
                                      ]
                                  )),
                                  RichText(text: TextSpan(
                                      text: ("₹500\n"),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black87
                                      ),
                                      children: [
                                        TextSpan(
                                            text: "₹1300",
                                            style: TextStyle(
                                              decoration: (
                                                  TextDecoration.lineThrough
                                              ),fontSize: 13,
                                                color: Colors.black54
                                            )
                                        ),
                                      ]
                                  )),
                                  RichText(text: TextSpan(
                                      text: ("₹600\n"),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black87
                                      ),
                                      children: [
                                        TextSpan(
                                            text: "₹1500",
                                            style: TextStyle(
                                              decoration: (
                                                  TextDecoration.lineThrough
                                              ),fontSize: 13,
                                                color: Colors.black54
                                            )
                                        ),
                                      ]
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          height: .2,

                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Measurements",style: TextStyle(fontSize: 15,color:Color(0xff317e8b)),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          height: .2,


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blueAccent,
                              ),
                              child: Center(
                                child: Text("prime",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: RichText(text: TextSpan(
                                  text: "Enjoy Unlimited FREE 1 - day delivery",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                  ),
                                  children: [TextSpan(
                                    text: "\nPrime offers everyday and more...",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                    TextSpan(
                                      text: "\nJoin Prime at Rs.299/month",
                                      style: TextStyle(
                                        color: Colors.blue
                                      )
                                    )
                                  ]
                              )),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: .2,

                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:Colors.red
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: RichText(text: TextSpan(
                                      text: "Deal of the Day",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white
                                      )
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          RichText(text: TextSpan(
                              text: "-68%",
                              style: TextStyle(
                                  color: Colors.red,
                                fontSize: 25,
                              ),
                          )),
                          Align(
                            alignment: Alignment.topCenter,
                              child: Icon(Icons.currency_rupee,size: 15)),
                          Text("387",style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                          ),),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("M.R.P:",
                            ),
                            Text("\u{20B9}${1199}",
                              style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                        thickness: .5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RichText(text: TextSpan(
                              text: "FREE delivery",
                              style: TextStyle(
                                color: Color(0xff317e8b)
                              ),
                              children: [
                                TextSpan(
                                  text: "Wednesday, 10 January ",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: "on orders \ndispatched by Amazon over Rs.499.",
                                  style: TextStyle(
                                    color: Colors.black
                                  )
                                ),
                                TextSpan(
                                  text: "Details",
                                  style: TextStyle(
                                    color: Color(0xff317e8b)
                                  )
                                ),
                              ]
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text("Delivering to Chennai 600099 - Update location",
                            style: TextStyle(
                              color: Color(0xff317e8b)
                            ),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(" In Stock ",style: TextStyle(
                              fontSize: 15,
                              color: Colors.green
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 32,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: Colors.white24
                              ),
                              child: Row(
                                children: [
                                  Center(child: Text("QTY")),
                                  DropdownButton(
                                    underline: SizedBox(),
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: (15),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newvalue) {
                                      setState(() {
                                        dropdownValue = newvalue!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amberAccent
                          ),
                          child: Center(
                            child: Text("Add to Cart",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange
                          ),
                          child: Center(
                            child: Text("Buy Now",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                          ),
                        ),
                      )

                    ],
                  ),
                  ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
