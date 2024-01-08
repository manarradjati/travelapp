import 'package:travelapp/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'screens/loading.dart';
import './screens/category_trips_screen.dart'; 
 
void main() {
  runApp(App());
  // runApp( MyApp());
}
 
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }
}
class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
return MaterialApp(
  
  title: 'traval App',
  theme: ThemeData(
    primarySwatch: Colors.blue,
    hintColor:Colors.amber,
    fontFamily: 'Roboto',
    textTheme: ThemeData.light().textTheme.copyWith(
      headline5: TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      )
    )
  ),
  home: CategoriesScreen(),
  routes: {
    '/':(ctx)=>CategoriesScreen(),
    CategorytripsScreen.screenRoute:(ctx)=>CategorytripsScreen(),
  },
  );

    }
  
}
 