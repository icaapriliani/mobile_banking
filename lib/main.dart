import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Replika BRImo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00529C)),
        useMaterial3: true,

      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:const SafeArea(
        child: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 50),
            Center(
              child:Text('kanvas replika brimo'),
            ),

        ],
        ),
      ),
      ),
      );
    
  }
}