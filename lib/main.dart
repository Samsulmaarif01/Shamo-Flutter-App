import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:shamo/models/user_model.dart'; 
import 'package:shamo/providers/auth_provider.dart'; 
import 'package:shamo/pages/card_page.dart';
import 'package:shamo/pages/checkout_page.dart';
import 'package:shamo/pages/checkout_success.dart';
import 'package:shamo/pages/detail_chat_page.dart';
import 'package:shamo/pages/home/edit_profile_page.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/home/product_pages.dart';
import 'package:shamo/pages/sign_in_page.dart';
import 'package:shamo/pages/splash_page.dart';
import 'package:shamo/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(), 
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => const MainPage(),
          '/detail-chat': (context) => const DetailChatPage(),
          '/edit-profile': (context) => const EditProfilePage(),
          '/product': (context) =>  const ProductPages(),
          '/cart': (context) =>  const CardPage(),
          '/checkout': (context) =>  const CheckoutPage(),
          '/checkout-success': (context) =>  const CheckoutSuccessPage(),
        },
      ),
    );
  }
}
