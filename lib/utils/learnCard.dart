import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

Widget LearnCard(
    {required String reward,
    required String title,
    required Color btnColor,
    required Color textColor,
    required Function()? clickAction}) {
  return Container(
    height: 130,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Colors.grey.shade200, width: 1.0)),
      color: Colors.white,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reward,
              style: GoogleFonts.robotoSlab(
                  fontWeight: FontWeight.w500, fontSize: 13),
            ),
            SizedBox(
              height: 3,
            ),
            Text(title,
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.w700, fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              height: 30,
              child: OutlinedButton(
                  onPressed: clickAction,
                  style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      backgroundColor: btnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Start",
                        style: GoogleFonts.robotoSlab(
                            color: textColor, fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: textColor,
                          size: 15,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    ),
  );
}
