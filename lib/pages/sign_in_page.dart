
import 'package:flutter/material.dart';
import'package:shamo/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30
),
        child: Column(
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [header()],
          ),
        ),
      ),
    );
  }
}
