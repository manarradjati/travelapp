import 'package:flutter/material.dart';
 import '../screens/category_trips_screen.dart';
class CategoryItem extends StatelessWidget{
  final String id;
  final String  title;
  final String imageUrl;

  const CategoryItem(this.id,this.title,this.imageUrl) ;
 void selectCategory(BuildContext ctx){
  Navigator.of(ctx).pushNamed(   
    CategorytripsScreen.screenRoute,
    arguments:{
      'id':id,
      'title':title,
    }
   
  );
 }
 
  @override
  Widget build(BuildContext context){
    return  InkWell(
      onTap:() => selectCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular( 15),
      child: Stack(
        children: [
          
          Image.network(
            imageUrl,
          height: 250,
          fit: BoxFit.cover,
      
          ),
           Container(
            padding: EdgeInsets.all( 10),
            alignment: Alignment.center,
      
            child: Text(
              title,
              style:  Theme.of(context).textTheme.headline6,
              ),
          
            decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular( 15),
             ),
              )
        ],
      
      
      ),
    );
  }
}