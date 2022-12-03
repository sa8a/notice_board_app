import 'package:flutter/material.dart';
import 'package:notice_board_app/model/post.dart';
import 'package:notice_board_app/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final postList = Post.postList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '掲示板アプリ',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(
        newPostList: postList,
      ),
    );
  }
}
