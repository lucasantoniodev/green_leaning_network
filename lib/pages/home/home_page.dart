import 'package:flutter/material.dart';
import 'package:green_learning_network/components/bottom_navbar_component.dart';
import 'package:green_learning_network/components/post_component.dart';
import 'package:green_learning_network/components/status_component.dart';
import 'package:green_learning_network/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.public),
            Text(
              'GLN',
              style: TextStyle(
                  color: AppTheme.primaryFontColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'GreenLearningNetwork',
              style: TextStyle(
                  color: AppTheme.primaryFontColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: AppTheme.primaryFontColor),
      ),
      drawer: Drawer(
        backgroundColor: AppTheme.primaryBackgroundColor,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Lucas Antônio Silva da Conceição'),
              accountEmail: const Text('3781368@alunouninter.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/avatar.png'),
                ),
              ),
              decoration: const BoxDecoration(
                  color: AppTheme.primaryColor,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile-background.jpg'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        children: [
          const StatusComponent(),
          Expanded(
            child: ListView(
              children: const [
                PostComponent(
                  username: 'Ana',
                  imagePath: '1.jpg',
                ),
                PostComponent(
                  username: 'Joana',
                  imagePath: '2.jpg',
                ),
                PostComponent(
                  username: 'Maria',
                  imagePath: '3.jpg',
                ),
                PostComponent(
                  username: 'Marcos',
                  imagePath: '4.jpg',
                ),
                PostComponent(
                  username: 'Felipe',
                  imagePath: '5.jpg',
                ),
                PostComponent(
                  username: 'João',
                  imagePath: '6.jpg',
                ),
                PostComponent(
                  username: 'José',
                  imagePath: '7.jpg',
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: const BottomNavbarComponent(),
    );
  }
}
