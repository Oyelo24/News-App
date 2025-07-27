import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:newsapp/providers/news_provider.dart'; // Make sure this is your provider file
//import 'package:newsapp/screens/home_screen.dart'; // Replace with your initial screen

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsProvider()), // This is your actual provider
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen(), // You can change this to your starting screen
      ),
    );
  }
}
