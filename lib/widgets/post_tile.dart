import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1594348657695854593/nYwKAqc3_400x400.jpg'),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'さば@プログラミング勉強中',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 14),
                Text(
                  '2022/12/03',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text('Flutter学習中！'),
          ],
        ),
      ],
    );
  }
}
