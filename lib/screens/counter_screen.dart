import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 185, 220, 248),
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            splashColor: Colors.white70,
            backgroundColor: const Color.fromARGB(255, 11, 65, 126),
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          //const SizedBox(
          //  height: 10.0,
          //  width: 30.0,
          //),
          FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Icon(Icons.replay_outlined)),
          //const SizedBox(
          //  height: 10.0,
          //  width: 30.0,
          //),
          FloatingActionButton(
            splashColor: Colors.white70,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.plus_one),
          )
        ],
      ),
    );
  }
}
