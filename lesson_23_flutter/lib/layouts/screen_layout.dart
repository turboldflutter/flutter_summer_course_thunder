import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/add_post_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [HomeScreen(), AddPostScreen(), ProfileScreen()],
      )),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _page == 0 ? Colors.blue : Colors.black),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: _page == 1 ? Colors.blue : Colors.black),
            label: 'hfcfcf',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: _page == 2 ? Colors.blue : Colors.black),
            label: 'hfcfcf',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
