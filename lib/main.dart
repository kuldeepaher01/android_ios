import 'package:catlog_app2/pages/homepage.dart';
import 'package:catlog_app2/pages/login.dart';
import 'package:catlog_app2/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
       MyRoutes.loginRoute: (context) => LoginPage(),
       MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}