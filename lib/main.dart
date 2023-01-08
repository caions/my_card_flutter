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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/caions'),
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: phoneIcon,
                  textColor: Colors.teal,
                  title: const Text('+55 (85) 98605-5270'),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: mailIcon,
                  textColor: Colors.teal,
                  title: const Text('caionsantos2000@gmail.com'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
