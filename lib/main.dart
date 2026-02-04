import 'package:flutter/material.dart';
import 'widgets/chat_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final data = [
    ChatItem(
      name: 'Rahmad Rifky Alfaresh',
      message: 'Oiii, Nanti Perpus Ga?',
      time: 'Januari',
      imagePath: 'images/1.png',
    ),
    ChatItem(
      name: 'Adrian Varerus',
      message: 'Besok Ngumpul Dimana?',
      time: 'Februari',
      imagePath: 'images/2.png',
    ),
    ChatItem(
      name: 'Aldy Shopee',
      message: 'Cs... di rumah Ga?',
      time: 'Maret',
      imagePath: 'images/3.png',
    ),
    ChatItem(
     name: 'Kasavana BRT',
      message: 'Mana Perpus Ga?',
      time: 'April',
      imagePath: 'images/4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      title: const Text("Chat Item"),
      backgroundColor: Colors.transparent, 
      elevation: 0, 
    ),
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return data[index];
        },
      ),
    ),
  ),
);

  }
}
