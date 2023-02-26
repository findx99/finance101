import 'package:finance101/screens/feed_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnLessons extends StatelessWidget {
  final String title;

  LearnLessons({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            title,
            style: GoogleFonts.robotoSlab(
              fontSize: 25,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            children: [
              Container(
                height: 220,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.yellow,
                            padding: EdgeInsets.fromLTRB(5,3,5,3),
                            child: Text("complete this & Earn 10 Coins",
                                style:  TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mutual Fund 101", style:  TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(height: 10,),
                          Text("Learn the basics of mutual fund to start your investing journey",
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          )),
                        ],
                      ),
                    SizedBox(height: 15,),
                    OutlinedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FeedScreen()));
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                            backgroundColor: Color.fromRGBO(50, 205, 50, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Start",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 13),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                          ],
                        ))
                    ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
