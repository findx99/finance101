import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget{
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio>{

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        children: [
          Container(
            height: 200,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 18, 10, 0),
                child: Column(
                  children: [
                    Column(
                    children: [
                      Text("Available Virtual Balance"),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3,00,000"),
                          Icon(Icons.currency_rupee_rounded, size: 15,),
                        ],
                      ),
                    ],
                  ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Invested Amount"),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("- 50,000", style: TextStyle(
                                    color: Colors.red
                                  ),),
                                  Icon(Icons.currency_rupee_rounded, size: 15, color: Colors.red,),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Current Amount"),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("51,000"),
                                  Icon(Icons.currency_rupee_rounded, size: 15,),
                                ],
                              ),
                            ]
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Column(
                      children: [
                        Text("Profit & Loss"),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+ 1,000", style: TextStyle(
                              color: Colors.green
                            ),),
                            Icon(Icons.currency_rupee_rounded, size: 15, color: Colors.green,),
                          ],
                        ),                      ],

                    )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}