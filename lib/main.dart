import 'package:car_project/first_screen.dart';
import 'package:car_project/team_details.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
FirstScreen.routeName:(context)=> FirstScreen(),
TeamDetails.routeName:(context)=> TeamDetails()
     },
      initialRoute: FirstScreen.routeName,
    );
  }
}

