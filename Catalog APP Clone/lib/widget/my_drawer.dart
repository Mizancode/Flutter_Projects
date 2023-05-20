import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:may_19_practice/utils/my_routes.dart';
import 'package:may_19_practice/widget/detail_page.dart';
import 'package:may_19_practice/widget/profile_photo.dart';

class MyDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileImage())),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://static.wikia.nocookie.net/villains/images/5/54/Light_YagamiHD.jpg/revision/latest?cb=20180414020152'),
                    ),
                  ),
                  accountName: Text('Mizan Sheikh',style: TextStyle(color: Colors.black),),
                  accountEmail: Text('mizansheikh6659@gmail.com',style: TextStyle(color: Colors.black),),
                )
            ),
            ListTile(
              leading: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.HomeRoute);
                },
                  child: Icon(CupertinoIcons.home,color: Colors.white,)),
              title: Text('Home',style: TextStyle(color: Colors.white),),
              subtitle: Text('Click Here For More Items.',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: InkWell(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileImage())),
                  child: Icon(CupertinoIcons.profile_circled,color: Colors.white,)),
              title: Text('Profile',style: TextStyle(color: Colors.white),),
              subtitle: Text('Click Here To See Profile.',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text('Email',style: TextStyle(color: Colors.white),),
              subtitle: Text('Click Here To Send Email.',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.LoginRoute);
                },
                  child: Icon(Icons.logout,color: Colors.white,)),
              title: Text('Logout',style: TextStyle(color: Colors.white),),
              subtitle: Text('Click Here To Logout',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}