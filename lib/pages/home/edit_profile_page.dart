import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(context),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }

  PreferredSizeWidget header(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Edit Profile',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.check, color: primaryColor),
        )
      ],
    );
  }

  Widget nameInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name', style: primaryTextStyle.copyWith(fontSize: 13)),
          TextFormField(
            style: primaryTextStyle,
            decoration: const InputDecoration(
              hintText: 'Samsul Maarif',
              hintStyle: TextStyle(color: primaryTextColor),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: subtitleColor),
              ),
            ),
          )
        ],
      ),
    );
  }

   Widget usernameInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username', style: primaryTextStyle.copyWith(fontSize: 13)),
          TextFormField(
            style: primaryTextStyle,
            decoration: const InputDecoration(
              hintText: '@samsulmaarif',
              hintStyle: TextStyle(color: primaryTextColor),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: subtitleColor),
              ),
            ),
          )
        ],
      ),
    );
  }

   Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: primaryTextStyle.copyWith(fontSize: 13)),
          TextFormField(
            style: primaryTextStyle,
            decoration: const InputDecoration(
              hintText: 'samsulmaarif107@gmail.com',
              hintStyle: TextStyle(color: primaryTextColor),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: subtitleColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(top: defaultMargin),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/Group 1347.png'),
              ),
            ),
          ),
          nameInput(),
          usernameInput(),
          emailInput(),
        ],
      ),
    );
  }
}
