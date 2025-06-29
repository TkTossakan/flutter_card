import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <String>[
      'assets/images/1.jpg',
      'assets/images/2.jpg',
      'assets/images/3.jpg',
      'assets/images/4.jpg',
      'assets/images/5.jpg',
      'assets/images/6.jpg',
      'assets/images/7.jpg',
      'assets/images/8.jpg',
      'assets/images/9.jpg',
      'assets/images/10.jpg',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image Grid')),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,         
            crossAxisSpacing: 10,       
            mainAxisSpacing: 10,        
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              imageList[index],
              fit: BoxFit.cover, 
            );
          },
        ),
      ),
    );
  }
}