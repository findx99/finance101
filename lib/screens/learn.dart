import 'package:finance101/screens/learnLessons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../utils/learnCard.dart';

class Learn extends StatefulWidget {
  @override
  LearnState createState() => LearnState();
}

class LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Learn",
          style: GoogleFonts.robotoSlab(
            fontSize: 30,
          ),
        ),
        // leading: Icon(Icons.arrow_back_ios),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //     "Learn",
                  //   style: TextStyle(
                  //     fontSize: 30,
                  //   ),
                  // ),
                ],
              ),
              // SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 100,
                              showLabels: false,
                              showTicks: false,
                              axisLineStyle: AxisLineStyle(
                                thickness: 0.2,
                                cornerStyle: CornerStyle.bothCurve,
                                color: Color.fromARGB(30, 0, 169, 181),
                                thicknessUnit: GaugeSizeUnit.factor,
                              ),
                              pointers: <GaugePointer>[
                                RangePointer(
                                  value: 40,
                                  cornerStyle: CornerStyle.bothCurve,
                                  width: 0.2,
                                  sizeUnit: GaugeSizeUnit.factor,
                                ),
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    positionFactor: 0.1,
                                    angle: 90,
                                    widget: Text(
                                      40.toStringAsFixed(0) + ' / 100',
                                      style: TextStyle(fontSize: 20),
                                    ))
                              ])
                        ]),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Learning Track",
                      style: GoogleFonts.robotoSlab(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "Learn through games & tasks",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  LearnCard(
                      reward: "5 videos & Earn 50 coins",
                      title: "Personal Finance",
                      btnColor: Color.fromRGBO(50, 205, 50, 1),
                      textColor: Colors.white,
                    clickAction: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LearnLessons(title: "Personal Finance")));
                    }
                  ),
                  Positioned(
                    right: 20,
                    top: 3,
                    child: Container(
                        height: 120,
                        child: Image.asset(
                          "assets/images/piggy.png",
                          fit: BoxFit.contain,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Stack(
                children: [
                  LearnCard(
                      reward: "3 videos & Earn 30 coins",
                      title: "Investing 101",
                      btnColor: Color.fromRGBO(235, 67, 140, 1),
                      textColor: Colors.white,
                      clickAction: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LearnLessons(title: "Investing 101")));
                      }
                  ),
                  Positioned(
                    right: 20,
                    top: 3,
                    child: Container(
                        height: 120,
                        child: Image.asset(
                          "assets/images/invest.png",
                          fit: BoxFit.contain,
                        )),
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Stack(
                children: [
                  LearnCard(
                      reward: "4 videos & Earn 40 coins",
                      title: "Passive Investing",
                      textColor: Colors.white,
                      btnColor: Color.fromRGBO(57, 82, 255, 1),
                      clickAction: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LearnLessons(title: "Passive Investing")));
                      }
                  ),
                  Positioned(
                    right: 20,
                    top: 3,
                    child: Container(
                        height: 120,
                        child: Image.asset(
                          "assets/images/profit.png",
                          fit: BoxFit.contain,
                        )),
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
