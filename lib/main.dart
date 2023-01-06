import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});
  final Icon phoneIcon = const Icon(Icons.phone, color: Colors.teal);
  final Icon mailIcon = const Icon(Icons.mail, color: Colors.teal);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  NetworkImage('https://avatars.githubusercontent.com/caions'),
            ),
            const Text(
              'Caio Nascimento',
              style: TextStyle(
                  color: Colors.white, fontSize: 22, fontFamily: 'Pacifico'),
            ),
            Text('Fullstack Javascript Developer',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                    fontFamily: 'BebasNeue')),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.white.withOpacity(0.3),
                width: 100,
                height: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: Colors.teal),
                  constraints:
                      const BoxConstraints(maxWidth: 350, maxHeight: 50),
                  labelText: '+55 (85) 98605-5270',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: phoneIcon,
                ),
              ),
            ),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.teal),
                constraints: const BoxConstraints(maxWidth: 350, maxHeight: 50),
                labelText: 'caionsantos2000@gmail.com',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: mailIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
