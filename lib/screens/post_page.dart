import 'package:flutter/material.dart';
import 'package:notice_board_app/widgets/empty_appbar.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController _textEditingController = TextEditingController();
  String _postContent = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _textEditingController,
                    enabled: true, // 活性、非活性の切り替え
                    maxLength: 140, // 入力可能な文字数
                    // 入力可能な文字数の制限を超える場合の挙動を制御
                    // falseだと最大文字数を超えても入力することが可能だが見た目はエラー状態となる
                    // maxLengthEnforcement: false,
                    obscureText: false, // trueにするとパスワード入力のように値をマスクする
                    maxLines: null, // 最大行数
                    decoration: const InputDecoration(
                      hintText: '内容を入力してください',
                      labelText: '投稿内容',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String text) {
                      // print('$text');
                      setState(() {
                        _postContent = text;
                      });
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('キャンセル'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('投稿する'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
