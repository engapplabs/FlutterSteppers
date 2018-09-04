import 'package:flutter/material.dart';
import 'screens/mainScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new MainScreen(),
      ),
    );
  }
}