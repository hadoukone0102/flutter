import 'package:flutter/material.dart';

class Home_Pages extends StatefulWidget {
  const Home_Pages({super.key});

  @override
  State<Home_Pages> createState() => _Home_PagesState();
}

class _Home_PagesState extends State<Home_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF082E70),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Text('Home',
              style: TextStyle(color: Colors.black,),
            ),
            ),
          ],
        ),
      ),
    );
  }
}