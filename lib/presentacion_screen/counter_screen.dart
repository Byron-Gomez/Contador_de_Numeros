 import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget{

const CounterScreen({ super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Numeros'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '10',
              style: TextStyle(
                fontSize: 169,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text('Clicks'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega la lógica para manejar el clic del botón flotante aquí
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}