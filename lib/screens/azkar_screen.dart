import 'package:azkar_app_training/screens/about_app_screen.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {

  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              ++_counter;
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'سبحة الأذكار',
          style: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'الحمد لله',
                  child: Text(
                    'الحمد لله',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuItem(
                  value: 'سبحان الله',
                  child: Text(
                    'سبحان الله',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuItem(
                  value: 'لا اله الا الله',
                  child: Text(
                    'لا اله الا الله',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuItem(
                  value: 'الله أكبر',
                  child: Text(
                    'الله أكبر',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuItem(
                  value: 'أستغفر الله',
                  child: Text(
                    'أستغفر الله',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuItem(
                  value: 'اللهم صل على محمد',
                  child: Text(
                    'اللهم صل على محمد',
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ];
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAppScreen(message: 'About App'),
                ),
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/IslamicImage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'images/masbaha.jpeg',
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0, 0),
                    blurRadius: 6,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Amiri',
                        fontSize: 25,
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.teal),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Amiri',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          ++_counter;
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          _counter = 0;
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'اعادة',
                      style: TextStyle(
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
