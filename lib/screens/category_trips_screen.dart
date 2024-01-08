import 'package:flutter/material.dart';
import '../app_data.dart';
 import 'package:travelapp/widgets/trip_item.dart';
class CategorytripsScreen extends StatelessWidget{
  static const screenRoute='/category-trips';
 // final String categoryId;
 // final String categoryTitle;

  //const CategorytripsScreen(   this.categoryId,   this.categoryTitle)  ;
  @override
  Widget build(BuildContext context){
    final routeArgument=
    ModalRoute.of(context)!.settings.arguments as Map<String,
    String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filteredTrips=Trips_data.where((trip){
      return trip.categories.contains( categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
      title:Text(categoryTitle!),
      ),
      body:  ListView.builder(
itemBuilder: (ctx,index){
  return TripItem(
    title: filteredTrips[index].title,
    imageUrl:filteredTrips[index]. imageUrl,
    duration:filteredTrips[index].duration ,
    tripType: filteredTrips[index].tripType,
    season:filteredTrips[index].season );
},
itemCount:filteredTrips.length ,
      ),
        );
     

  }
}