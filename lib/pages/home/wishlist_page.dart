import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('whislist page', style: primaryTextStyle.copyWith(fontSize: 20),),
    );
  }
}