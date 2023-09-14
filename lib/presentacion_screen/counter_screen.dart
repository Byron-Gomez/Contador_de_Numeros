import 'package:flutter/material.dart';

// Define una clase CounterScreen que extiende StatefulWidget.
class CounterScreen extends StatefulWidget {
  // Constructor con un parámetro key opcional.
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Define la clase _CounterScreenState que extiende State<CounterScreen>.
class _CounterScreenState extends State<CounterScreen> {
  // Variable para realizar un seguimiento del contador de clics.
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Numeros'), // Título de la barra de navegación.
        centerTitle: true, // Centra el título en la barra de navegación.
        backgroundColor: Colors.blueGrey, // Color de fondo de la barra de navegación.
        foregroundColor: Colors.white, // Color del texto en la barra de navegación.
      ),
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              '$clickCounter', // Muestra el valor actual del contador.
              style: TextStyle(
                fontSize: 169,
                fontWeight: FontWeight.w100, // Peso de la fuente ligera.
              ),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}', // Muestra "Click" o "Clicks" según el valor del contador.
              style: const TextStyle(fontSize: 25), // Estilo del texto.
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++; // Incrementa el contador cuando se hace clic en el botón flotante.
          });
          // Agrega la lógica para manejar el clic del botón flotante aquí
        },
        child: const Icon(Icons.plus_one), // Icono del botón flotante.
      ),
    );
  }
}
