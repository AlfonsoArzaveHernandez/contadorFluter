import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 143, 196, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador de clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.white70,
        backgroundColor: const Color.fromARGB(255, 11, 65, 126),
        onPressed: () {
          counter++;
        },
        child: const Icon(Icons.plus_one,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
