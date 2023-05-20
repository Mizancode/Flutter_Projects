import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:may_19_practice/utils/my_routes.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String message='';
  final UserName='Mizan Sheikh';
  final UserPassword='Mizan12345';
  final userNameController=TextEditingController();
  final userPasswordController=TextEditingController();
  Widget build(BuildContext context){
    moveToHome(){
      if(userNameController.text==UserName && userPasswordController.text==UserPassword) {
        Navigator.pushNamed(context, MyRoutes.HomeRoute);
        setState(() {

        });
      }else if(userNameController.text==UserName && userPasswordController.text!=UserPassword){
        message='Please Enter Correct User Password';
        setState(() {

        });
      }else if(userNameController.text!=UserName && userPasswordController.text!=UserPassword){
        message='Please Enter Correct User Name';
        setState(() {

        });
      }else{
        message='Please Enter Right Credential';
        setState(() {

        });
      }

    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/login.png'),
              SizedBox(
                height: 5.0,
              ),
              Text('Welcome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textScaleFactor: 1.4,),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      controller: userNameController,
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        hintText: 'Enter Your Name',
                      ),
                    ),
                    TextField(
                      controller: userPasswordController,
                      obscureText: true,
                     decoration: InputDecoration(
                       labelText: 'User Password',
                       hintText: 'Enter Password',
                     ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Material(
                color: Colors.blueAccent,
                child: InkWell(
                  onTap: ()=> moveToHome(),
                  child: Container(
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
              ),
              TextButton(onPressed: (){}, child: Text('Forget Credential?',style: TextStyle(color: Colors.grey),)),
              SizedBox(
                height: 10,
              ),
              Text(message,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}