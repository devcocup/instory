import 'package:flutter/material.dart';
import 'package:instory/screens/home.dart';
import 'package:instory/utils/colors.dart';

void main() => runApp(InStoryApp());

class InStoryApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InStory',
      theme: ThemeData(
        backgroundColor: background,
        scaffoldBackgroundColor: background
      ),
      home: Home(),
    );
  }
}

