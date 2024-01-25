import 'package:flutter/material.dart';
import 'package:penerjemah_bayi/pages/education_page.dart';
import 'package:penerjemah_bayi/pages/home_page.dart';
import 'package:penerjemah_bayi/pages/my_baby_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    EducationPage(),
    MyBabyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavItems = [
      BottomNavigationBarItem(
        icon: (currentIndex == 0)
            ? const Icon(
                Icons.home,
                color: Color.fromARGB(255, 237, 90, 178),
              )
            : const Icon(Icons.home_outlined),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: (currentIndex == 1)
            ? const Icon(Icons.article, color: Color.fromARGB(255, 237, 90, 178))
            : const Icon(Icons.article_outlined),
        label: 'Education',
      ),
      BottomNavigationBarItem(
        icon: (currentIndex == 2)
            ? const Icon(Icons.child_friendly, color: Color.fromARGB(255, 237, 90, 178))
            : const Icon(Icons.child_friendly_outlined),
        label: 'My Baby',
      )
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
