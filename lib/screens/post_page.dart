import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text("投稿画面"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
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
              const SizedBox(height: 20),
              Text(_postContent),
            ],
          ),
        ),
      ),
    );
  }
}
