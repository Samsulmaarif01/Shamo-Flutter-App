import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(image: AssetImage('assets/Sepatu.png'),),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TERREX URBAN LOW', style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 2,),
                Text('\$143.98', style: priceTextStyle.copyWith(
                  fontWeight: medium,
                ),),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text('2 Items', style: secondaryTextStyle.copyWith(
            fontSize: 12,
          ),)
        ],
      ),
    );
  }
}