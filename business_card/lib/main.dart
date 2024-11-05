import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('image/pic.png'),
              ),
            ),
            const Text(
              'ASEM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xFF6C8090),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  height: 65,
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.phone,
                        size: 32,
                        color: Color(0xFF2B475E),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '(+20) 12XXXXX92',
                        style: TextStyle(fontSize: 25),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  height: 65,
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.mail,
                        size: 32,
                        color: Color(0xFF2B475E),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'asem@gmail.com',
                        style: TextStyle(fontSize: 25),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
