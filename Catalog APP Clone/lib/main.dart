import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:may_19_practice/pages/home_page.dart';
import 'package:may_19_practice/pages/splash_page.dart';
import 'package:may_19_practice/utils/my_routes.dart';
import 'package:may_19_practice/utils/my_theme.dart';
import 'package:may_19_practice/pages/login_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.mytheme(context),
      home: HomePage(),
      initialRoute: MyRoutes.SplashRoute,
      routes: {
        MyRoutes.HomeRoute:(context)=>HomePage(),
        MyRoutes.LoginRoute:(context)=>LoginPage(),
        MyRoutes.SplashRoute:(context)=>SplashPage(),
      },
    );
  }
}
