import 'package:finance101/screens/learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIdx = 0;
  List screens = [
    Home(),
    Learn()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 40, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hey, Venkatesh",
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24
                          )
                      ),

                      // notification btn
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(54, 54, 54, 1),
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(width: 20,),
                          // translate btn
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(54, 54, 54, 1),
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.translate,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  // coins container
                  Container(
                      height: 130,
                      width: double.infinity,
                      // decoration: BoxDecoration(
                      //     color: Color.fromRGBO(248, 248, 241, 1),
                      //     borderRadius: BorderRadius.circular(10)),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                  "Coins",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 20,
                                  // fontWeight: FontWeight.w600
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "130",
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      "assets/images/coin3d.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                              OutlinedButton(
                                  onPressed: () {},
                                  child: Text("Reedem"),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(213, 247, 65, 1),
                                  foregroundColor: Color.fromRGBO(1, 1, 1, 1),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  side: BorderSide(color: Colors.black, width: 0.6),
                                  minimumSize: Size(60,30)
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 0,
                  )
                ])),
            // bottom card
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text("My Goals")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
