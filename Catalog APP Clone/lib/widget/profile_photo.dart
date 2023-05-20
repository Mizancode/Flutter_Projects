import 'package:flutter/material.dart';
class ProfileImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Image.network('https://static.wikia.nocookie.net/villains/images/5/54/Light_YagamiHD.jpg/revision/latest?cb=20180414020152'),
          ],
        )

      ),
    );
  }
}