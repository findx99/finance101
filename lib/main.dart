
import 'package:finance101/screens/bottom_nav.dart';
import 'package:finance101/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  return runApp(App());
}
class App extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: GoogleFonts.openSans()
        )
      ),
      title: "Finance101",
      home: BottomNav(),
    );
  }
}