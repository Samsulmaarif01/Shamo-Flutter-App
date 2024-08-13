import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 15,
          color: backgroundColor4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Image.asset('assets/Home.png', width: 21),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/Chat Icon.png', width: 20),
                onPressed: () {},
              ),
              const SizedBox(width: 40), // Empty space for the FAB
              IconButton(
                icon: Image.asset('assets/wishlist.png', width: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/Profile.png', width: 18),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text(
          'main page',
          style: primaryTextStyle.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
