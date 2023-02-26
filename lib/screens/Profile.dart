
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget{

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Profile",
          style: GoogleFonts.robotoSlab(
            fontSize: 30,
          ),
        ),
        // leading: Icon(Icons.arrow_back_ios),
      ),
      body: Center(child: Text("Profile")),

    );
  }
}