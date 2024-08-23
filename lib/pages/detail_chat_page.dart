import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(context),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }

  AppBar header(BuildContext context) {
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

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/Sepatu.png',
              width: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COURT VISIO...',
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$57,15',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/Group 15.png',
            width: 22,
          )
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productPreview(),
          Row(
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type a message...',
                      border: InputBorder.none,
                      hintStyle: subtitleTextStyle,
                    ),
                    style: primaryTextStyle,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/Send Button.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget content() {
  return ListView(
    padding: const EdgeInsetsDirectional.symmetric(
      horizontal: defaultMargin,
    ),
    children: const [
     ChatBubble(
      isSender: true,
      text: 'Hi, This item is still available?',
      hasProduct: true,
     ),
     ChatBubble(
      isSender: false,
      text: 'Good night, This item is only avaliable in size 42 and 43',
     ),
     ChatBubble(
      isSender: true,
      text: 'Oh ok that is Good',
     ),
    ],
  ); 
}
