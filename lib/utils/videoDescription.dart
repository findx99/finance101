import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoDescription extends StatelessWidget {
  final title;

  VideoDescription(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.black.withOpacity(0.8),
            height: 80.0,
            padding: EdgeInsets.only(left: 5.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ])));
  }
}