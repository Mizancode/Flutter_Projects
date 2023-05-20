import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:may_19_practice/utils/catalog_item.dart';
import '../widget/catalog_item_list.dart';
import '../widget/my_drawer.dart';
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App',style: TextStyle(fontFamily: GoogleFonts.lato().fontFamily),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Catalog APP',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
              Text('Trending Products',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
              Container(
                height: 550,
                child: (CatalogItem.items!=null && CatalogItem.items.isNotEmpty)? ListView.builder(
                  itemBuilder: (context,index){
                    return CatalogItemList(CatalogItem.items[index]);
                  },
                  itemCount: CatalogItem.items.length,
                ): Center(
                  child: CircularProgressIndicator(),
                ),
              ),

            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
