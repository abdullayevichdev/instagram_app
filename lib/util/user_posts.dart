import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //profile photo
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        //Post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
