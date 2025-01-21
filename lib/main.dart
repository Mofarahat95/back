import 'package:flutter/material.dart';
import 'package:islami_2/screens/home/home_screen.dart';
import 'package:islami_2/screens/home/sura_details.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context)=> HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
      },
    );
  }
}
