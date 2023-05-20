import 'package:flutter/material.dart';
import 'package:may_19_practice/utils/catalog_item.dart';
import 'package:may_19_practice/widget/detail_page.dart';

import '../model/items.dart';
class CatalogItemList extends StatelessWidget{
  final Item items;
  CatalogItemList(this.items);
  Widget build(BuildContext context){
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(items)));
        },
        child: Card(
          child: Row(
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(items.imageUrl),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(child: Text(items.name,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),)),
                    SizedBox(
                      height: 2.0,
                    ),
                    Card(child: Text(items.desc,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)),
                  ],
                ),
              ),
              Column(
                children: [
                  Text('\$${items.price}',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 3,
                  ),
                  Material(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text('BUY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
