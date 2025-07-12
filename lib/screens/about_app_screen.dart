import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {

  final String message;


  AboutAppScreen({required this.message});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          widget.message,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Amiri',
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'تطبيق مسبحة أذكار',
          style: TextStyle(
            fontFamily: 'Amiri',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
