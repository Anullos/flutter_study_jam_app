import 'package:flutter/material.dart';

import 'src/shared/presentation/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SF-Pro-Display',
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
