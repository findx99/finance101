
import 'package:finance101/screens/portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fund_screen.dart';

class CommunityScreen extends StatefulWidget{

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.limeAccent,
            tabs: [
              Tab(child: Text("Funds")),
              Tab(child: Text("Portfolio")),
              Tab(child: Text("Leadersboard"))
            ],
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "Community",
            style: GoogleFonts.robotoSlab(
              fontSize: 30,
            ),
          ),
          // leading: Icon(Icons.arrow_back_ios),
        ),
        body: TabBarView(
          children: [
            FundScreen(),
            Portfolio(),
            Text("Board"),
          ],
        )

      ),
    );
  }
}