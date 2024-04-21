import 'package:flutter/material.dart';

class PostBodyComponent extends StatefulWidget {
  final String imagePath;
  final VoidCallback toggleFavorite;

  const PostBodyComponent(
      {super.key, required this.imagePath, required this.toggleFavorite});

  @override
  State<PostBodyComponent> createState() => _PostBodyComponentState();
}

class _PostBodyComponentState extends State<PostBodyComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 300,
      ),
      width: double.infinity,
      child: InkWell(
        onDoubleTap: widget.toggleFavorite,
        child:
            Image.asset('assets/images/${widget.imagePath}', fit: BoxFit.cover),
      ),
    );
  }
}
