import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  final String name;

  const ChatDetail({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  extendBodyBehindAppBar: true, // 
  appBar: AppBar(
    title: Text(name),
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
    child: Center(
      child: Text(
        'Halo $name',
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  ),
);

  }
}
