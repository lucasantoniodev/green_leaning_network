import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:green_learning_network/theme.dart';

class BottomNavbarComponent extends StatelessWidget {
  const BottomNavbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.primaryColor,
        border: Border(top: BorderSide(color: AppTheme.primaryBorderColor)),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
            gap: 8,
            backgroundColor: AppTheme.primaryColor,
            color: AppTheme.primaryFontColor,
            activeColor: AppTheme.primaryFontColor,
            tabBackgroundColor: AppTheme.secondaryColor,
            padding: EdgeInsets.all(8),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.add_box,
                text: 'New Post',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ]),
      ),
    );
  }
}
