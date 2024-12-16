import 'package:flutter/material.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'zvezda_099',
    'Abdullayevich',
    'Asrorbek_700',
    'Sulaymanov_700',
    'Salim_1101'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Home'),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),

          //POSTS
          const UserPosts(
            name: 'Asrorbek_700',
          ),
        ],
      ),
    );
  }
}
