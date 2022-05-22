import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      initialRoute: '/home_screen',
      routes: {
        '/basic_design': (BuildContext context) => const BasicDesignScreen(),
        '/scroll_design': (BuildContext context) => const ScrollDesignScreen(),
        '/home_screen': (BuildContext context) => const HomeScreen(),
      },
      home: const Scaffold(),
    );
  }
}
