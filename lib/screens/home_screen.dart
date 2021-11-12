import 'package:flutter/material.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/screens/categories_screen.dart';
import 'package:wally_app/screens/download_screen.dart';
import 'package:wally_app/screens/latest_secreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  List pages = [
    const LatestScreen(),
    const CategoryScreen(),
    const DownloadScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: navigateBottomBar,
            currentIndex: selectedPage,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view, color: Colors.white), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download, color: Colors.white), label: ""),
            ]),
        body: pages[selectedPage],
      ),
    );
  }
}
