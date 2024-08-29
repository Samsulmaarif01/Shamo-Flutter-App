import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ChatPage(),
    const WishlistPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image.asset(
          'assets/Cart Icon.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: Container(
          color: backgroundColor4, 
          padding: const EdgeInsets.only(top: 8.0), 
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4, 
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    'assets/Home.png',
                    width: 21,
                    color: currentIndex == 0 ? const Color(0xff6C5ECF) : Colors.grey,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0), 
                  child: Image.asset(
                    'assets/Chat Icon.png',
                    width: 20,
                    color: currentIndex == 1 ? const Color(0xff6C5ECF) : Colors.grey,
                  ),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0), 
                  child: Image.asset(
                    'assets/wishlist.png',
                    width: 20,
                    color: currentIndex == 2 ? const Color(0xff6C5ECF) : Colors.grey,
                  ),
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0), 
                  child: Image.asset(
                    'assets/Profile.png',
                    width: 18,
                    color: currentIndex == 3 ? const Color(0xff6C5ECF) : Colors.grey,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: _pages,
        ),
      ),
    );
  }
}
