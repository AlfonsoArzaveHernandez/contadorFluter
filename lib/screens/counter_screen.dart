import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Importa el paquete para mostrar los mensajes tipo toast

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increaseCounter() {
    if (counter < 15) {
      setState(() {
        counter++;
      });
    } else {
      showToastMessage("Límite alcanzado arriba");
    }
  }

  void decreaseCounter() {
    if (counter > -15) {
      setState(() {
        counter--;
      });
    } else {
      showToastMessage("Límite alcanzado abajo");
    }
  }

  void showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }

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
            onPressed: decreaseCounter,
            child: const Icon(Icons.exposure_minus_1_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: const Icon(Icons.replay_outlined),
          ),
          FloatingActionButton(
            splashColor: Colors.white70,
            onPressed: increaseCounter,
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
