import 'package:flutter/material.dart';
import 'package:jobasee/blogPage/blogPage.dart';
import 'package:jobasee/coursePage/coursePage.dart';
import 'package:jobasee/homePage/ChoosePage.dart';
import 'package:jobasee/homePage/homepage.dart';
import 'package:jobasee/portofolioPage/porotofolioPage.dart';
import 'package:jobasee/profilePage.dart/profilePage.dart';
import 'package:jobasee/searchPage/searchJobPage.dart';
import 'package:jobasee/theme/theme.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  final List<Widget> _children = 
  [
    HomePage(),
    CoursePage(),
    BlogPage(),
    PortofolioPage(),
    ProfilePage(),

  ];

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        
        width: 300,
        decoration: BoxDecoration(

          color: Colors.white,
          border: Border.all(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: colorBtnGrey,
              blurRadius: 1,
              spreadRadius: 1,
              blurStyle: BlurStyle.normal,
              offset: Offset(1, 1),
            )
          ]
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          backgroundColor: Colors.grey[100],
          currentIndex: myIndex,
          selectedItemColor: colorBtn,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'Course',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: 'Blog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge_outlined),
              label: 'Portofolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Center(
        child: _children.elementAt(myIndex),
      )
    );
  }
}

