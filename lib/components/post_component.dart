import 'package:flutter/material.dart';
import 'package:green_learning_network/components/post_actions_component.dart';
import 'package:green_learning_network/components/post_body_component.dart';
import 'package:green_learning_network/components/post_header_component.dart';

class PostComponent extends StatefulWidget {
  final String imagePath;
  final String username;

  const PostComponent(
      {super.key, required this.imagePath, required this.username});

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PostHeaderComponent(username: widget.username),
          PostBodyComponent(
            toggleFavorite: _toggleFavorite,
            imagePath: widget.imagePath,
          ),
          PostActionsComponent(
            isFavorite: _isFavorite,
            toggleFavorite: _toggleFavorite,
          )
        ],
      ),
    );
  }
}
