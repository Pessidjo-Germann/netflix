import 'package:flutter/material.dart';
import 'package:netflix/route.dart';

void main() {
  runApp(const MyApp());
}

//Bienvenue dans cette video
//Nous allons reproduire Netflix!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(
            primary: Color.fromARGB(255, 250, 247, 247),
            secondary: Colors.red,
            background: Colors.black,
          ),
          appBarTheme: const AppBarTheme(color: Colors.black)),
      routes: route,
      initialRoute: '/connexion',
    );
  }
}
