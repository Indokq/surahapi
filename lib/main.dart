import 'package:flutter/material.dart';
import 'surahPage.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'HTTP',
 debugShowCheckedModeBanner: false,
 theme: ThemeData(
 primarySwatch: Colors.blue,
 visualDensity: VisualDensity.adaptivePlatformDensity,
 ),
 home: SurahPage(),
 );
 }
}