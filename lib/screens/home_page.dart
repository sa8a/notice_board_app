import 'package:flutter/material.dart';
import 'package:notice_board_app/screens/post_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("掲示板アプリ"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text("ここに投稿を表示"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostPage(),
            ),
          );
        },
      ),
    );
  }
}
