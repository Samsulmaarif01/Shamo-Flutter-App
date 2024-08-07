
import 'package:flutter/material.dart';
import 'theme.dart'; 

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget
 build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shamo App',

      home: HomePage(), 
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'), 
      ),
      body: Center(
        child: Text('Selamat datang di halaman utama!',
          style: primaryTextStyle, 
        ),
      ),
    );
  }
}
