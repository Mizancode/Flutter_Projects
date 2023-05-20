import 'dart:async';

import 'package:flutter/material.dart';
import 'package:may_19_practice/pages/login_page.dart';
class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text('CATALOG APP',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      )
    );
  }
}