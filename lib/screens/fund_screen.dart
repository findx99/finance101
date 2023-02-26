
import 'package:finance101/models/TopFund.dart';
import 'package:finance101/utils/fundCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/fetchService.dart';

class FundScreen extends StatefulWidget{

  @override
  _FundScreenState createState() => _FundScreenState();
}

class _FundScreenState extends State<FundScreen>{

  TopFund? topFunds;
  bool isLoaded = false;

  void loadData() async {
    topFunds = await fetchData().fetchTopFund();


    if (topFunds != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }


  @override
  Widget build(BuildContext context){
    return Container(
      color: Color.fromRGBO(245, 245, 245, 1),
      child: ListView(
        children: [
          FundCard(sectionTitle: "Popular Funds", icon: Icon(Icons.trending_up_rounded, size: 20,), data: topFunds),

        ],
      ),
    );
  }
}