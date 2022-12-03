import 'package:flutter/material.dart';
import 'package:notice_board_app/model/post.dart';
import 'package:notice_board_app/screens/post_page.dart';
import 'package:notice_board_app/widgets/post_tile.dart';

class HomePage extends StatefulWidget {
  // 画面遷移元からのデータを受け取る変数
  final List newPostList;

  const HomePage({super.key, required this.newPostList});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 管理する変数
  late List newPostList;

  @override
  void initState() {
    super.initState();

    // 受け取ったデータを管理する変数に格納
    newPostList = widget.newPostList;
  }

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
              for (Post post in newPostList.reversed)
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
