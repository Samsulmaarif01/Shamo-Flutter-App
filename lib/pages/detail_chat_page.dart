import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: headerr(context),
      bottomNavigationBar: chatInput(),
      body: Container(), // Tambahkan widget lain di sini jika diperlukan
    );
  }

  AppBar headerr(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: false,
      title: Row(
        children: [
          Image.asset(
            'assets/Group 1348.png',
            width: 50,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoes Store',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                'Online',
                style: secondaryTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ],
      ),
      toolbarHeight: 90,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget chatInput() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
               decoration: const BoxDecoration(
               color: backgroundColor4,
               borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
               ),
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message...',
                  border: InputBorder.none,
                  hintStyle: secondaryTextStyle,
                ),
                style: primaryTextStyle,
              ),
            ),
          ),
         const SizedBox(width: 20,),
         Image.asset('assets/Send Button.png', width: 45,)
          // IconButton(
          //   icon: Icon(Icons.send, color: primaryColor),
          //   onPressed: () {
              
          //   },
          // ),
        ],
      ),
    );
  }
}
