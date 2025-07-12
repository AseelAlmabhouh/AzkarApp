import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {

  String message = 'عن التطبيق';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      Map<String, dynamic> arguments =
          modalRoute.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        message = arguments['message'];
      }
    }

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
          message,
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
