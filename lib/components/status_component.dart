import 'package:flutter/material.dart';
import 'package:green_learning_network/models/status.dart';
import 'package:green_learning_network/theme.dart';

class StatusComponent extends StatefulWidget {
  const StatusComponent({super.key});

  @override
  State<StatusComponent> createState() => _StatusComponentState();
}

class _StatusComponentState extends State<StatusComponent> {
  List<Status> statuses = [
    Status(name: 'Ana', imagePath: 'assets/images/1.jpg'),
    Status(name: 'Joana', imagePath: 'assets/images/2.jpg'),
    Status(name: 'Maria', imagePath: 'assets/images/3.jpg'),
    Status(name: 'Marcos', imagePath: 'assets/images/4.jpg'),
    Status(name: 'Felipe', imagePath: 'assets/images/5.jpg'),
    Status(name: 'João', imagePath: 'assets/images/6.jpg'),
    Status(name: 'José', imagePath: 'assets/images/7.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: statuses.length,
          itemBuilder: (context, index) {
            final status = statuses[index];
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppTheme.primaryColor,
                          AppTheme.primaryBackgroundColor,
                          Color.fromARGB(255, 0, 221, 74),
                          AppTheme.primaryColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(status.imagePath),
                      radius: 30,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    status.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
