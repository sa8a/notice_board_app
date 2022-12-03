import 'package:flutter/material.dart';
import 'package:notice_board_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '掲示板アプリ',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomePage(),
    );
  }
}
