import 'package:flutter/material.dart';
import 'package:portfolio/views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Portfolio App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView());
  }
}
