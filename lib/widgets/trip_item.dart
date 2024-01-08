import 'package:flutter/material.dart';
import '../models/trip.dart';
class TripItem extends StatelessWidget{
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  TripItem({
   required  this.title,
   required  this.imageUrl,
   required  this.duration,
   required this.tripType,
   required  this.season,
  });

   String get seasonText {
  if (season == Season.Winter) {
    return 'شتاء';
  }

  if (season == Season.Spring) {
    return 'ربيع';
  }

  if (season == Season.Summer) {
    return 'صيف';
  }

  if (season == Season.Autumn) {
    return 'خريف';
  }

  // Default return if none of the conditions are met
  return 'Unknown Season';
}

  String get tripTypeText{
    switch(tripType){
      case TripType.Exploration:
      return 'استكشاف';
      case TripType.Recovery:
      return 'انشطة';
      case TripType.Activities:
      return '';
      case TripType.Therapy:
      return 'معالجة';
      default:
      return 'غير معروف';    
      }
  }


  void selectTrip(){}
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: selectTrip,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular( 15),
        ),
              elevation: 7,
              margin: EdgeInsets.all( 10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.only(
                          topLeft: Radius.circular( 15),
                          topRight: Radius.circular( 15),
                        ) ,
                        child: Image.network(
                          imageUrl,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,),
                        ),
                      Container(
                        height: 250,
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:[
                              Colors.black.withOpacity( 0),
                              Colors.black.withOpacity( 0.8),
                            ],
                            stops: [0.6,1],
                          ),
                        ),
                        child: Text( 
                          title,
                          style: Theme.of(context).textTheme.headline6,
                          overflow: TextOverflow.fade,
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                           Icon(Icons.today,
                            color: Theme.of(context).colorScheme.secondary, 
                            ),
                            SizedBox(
                              width: 6,
                            ),
                           Text( '$duration ايام'),
                          ],
                        ),
                         Row(
                          children: [
                           Icon(Icons.wb_sunny,
                             color: Theme.of(context).colorScheme.secondary,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                           Text(  seasonText),
                          ],
                        ),
                        Row(
                          children: [
                           Icon(Icons.family_restroom,
                             color: Theme.of(context).colorScheme.secondary,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                           Text( tripTypeText  ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
                ),
      ),

    );
  }
}