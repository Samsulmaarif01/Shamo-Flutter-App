import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:20),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/Sepatu.png', width: 60,)),
          const SizedBox(width: 12,),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('COURT VISION 2.0',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
                ),
               Text('\$58,57', style: priceTextStyle,)
                     ],
                    ),
           ),
      Image.asset('assets/Love Button blue.png', width: 34,)
     ],
    ),
   );
  }
}