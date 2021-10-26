

import 'package:flutter/material.dart';
import 'package:screen/screens/persistant_bottomnavigation_bar.dart';
import 'package:screen/screens/delivery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  PersistantBottomNavigation(),
    );
  }
}