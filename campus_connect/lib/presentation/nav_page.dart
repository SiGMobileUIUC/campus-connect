import 'package:flutter/material.dart';
import 'package:campus_connect/domain/nav_page_nav_bar.dart';
import 'package:campus_connect/presentation/feed_page.dart';
import 'package:campus_connect/presentation/account_page.dart';
import 'package:campus_connect/presentation/create_post_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    //bool isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: IndexedStack(
                index: _selectedIndex,
                children: const [
                  FeedScreen(),
                  CreatePostScreen(),
                  AccountScreen(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
