import 'package:day2/pages/HomePage.dart';
import 'package:day2/pages/Login.dart';

import 'package:day2/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Login(),
      themeMode: ThemeMode.light,
      home: Login(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black,),
          ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) =>HomePage(),
        MyRoutes.loginRoute: (context) => Login(),
      },

    );
  }
}


