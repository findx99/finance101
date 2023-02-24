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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.orange,
              child: Card(
                child: Column(children: [
                  Text("Complete this module & Earn 10 Coins"),
                  Text("Mutual Fund 101"),
                  Text("Learn the basics of mutual fund to start your investing journey..."),
                  OutlinedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FeedScreen()));
                  }, child:Text("Start"))
                ]),
              ),
            )
          ],
        ));
  }
}
