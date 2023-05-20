import 'package:flutter/material.dart';

import '../model/items.dart';
class DetailPage extends StatelessWidget{
  final Item items;
  DetailPage(this.items);
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Image.network(items.imageUrl),
            SizedBox(
              height: 20.0,
            ),
            Text(items.name,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 23),),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(items.desc,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 17),),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Card(child: Text('\$${items.price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Material(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(18),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 80,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text('BUY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}