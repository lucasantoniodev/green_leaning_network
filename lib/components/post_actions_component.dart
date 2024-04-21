import 'package:flutter/material.dart';
import 'package:green_learning_network/theme.dart';

class PostActionsComponent extends StatefulWidget {
  final bool isFavorite;
  final VoidCallback toggleFavorite;

  const PostActionsComponent(
      {super.key, required this.toggleFavorite, required this.isFavorite});

  @override
  State<PostActionsComponent> createState() => _PostActionsComponentState();
}

class _PostActionsComponentState extends State<PostActionsComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: widget.toggleFavorite,
                icon: widget.isFavorite
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_outline),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mode_comment_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share))
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(AppTheme.primaryColor),
                backgroundColor:
                    MaterialStatePropertyAll(AppTheme.tertiaryColor),
              ),
              child: const Row(
                children: [
                  Icon(Icons.forest, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Donate",
                    style: TextStyle(
                      color: AppTheme.primaryFontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
