class Post {
  String? id;
  String? postText;

  Post({
    required this.id,
    required this.postText,
  });

  static List<Post> postList() {
    return [
      Post(id: '1', postText: '映画を観る'),
      Post(id: '2', postText: '買い物をする'),
      Post(id: '3', postText: '選択をする'),
      Post(id: '4', postText: 'アニメを見る'),
      Post(id: '5', postText: 'メールチェック'),
    ];
  }
}
