import 'package:flutter/material.dart';
import 'package:notice_board_app/screens/post_page.dart';
import 'package:notice_board_app/widgets/post_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("掲示板アプリ"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: const [
              PostTile(),
            ],
          ),
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
