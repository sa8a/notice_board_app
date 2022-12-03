import 'package:flutter/material.dart';
import 'package:notice_board_app/model/post.dart';
import 'package:notice_board_app/screens/post_page.dart';
import 'package:notice_board_app/widgets/post_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final postList = Post.postList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("掲示板アプリ"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: ListView(
            children: [
              // PostTile(),
              for (Post post in postList.reversed)
                PostTile(
                  post: post,
                ),
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
