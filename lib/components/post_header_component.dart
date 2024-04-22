import 'package:flutter/material.dart';

class PostHeaderComponent extends StatefulWidget {
  final String username;

  const PostHeaderComponent({super.key, required this.username});

  @override
  State<PostHeaderComponent> createState() => _PostHeaderComponentState();
}

class _PostHeaderComponentState extends State<PostHeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/avatar.png'),
                ),
              ),
              const SizedBox(width: 8),
              Text(widget.username,
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
