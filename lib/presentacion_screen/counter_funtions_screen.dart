import 'package:flutter/material.dart';

// Define una clase CounterFuntionScreen que extiende StatefulWidget.
class CounterFuntionScreen extends StatefulWidget {
  // Constructor con un parámetro key opcional.
  const CounterFuntionScreen({Key? key}) : super(key: key);

  @override
  State<CounterFuntionScreen> createState() => _CounterFuntionScreenState();
}

// Define la clase _CounterFuntionScreenState que extiende State<CounterFuntionScreen>.
class _CounterFuntionScreenState extends State<CounterFuntionScreen> {
  // Variable para realizar un seguimiento del contador de clics.
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Funciones'),
        backgroundColor: Colors.blueGrey, // Color de fondo de la barra de navegación.
        foregroundColor: Colors.white, // Color del texto en la barra de navegación.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón de reinicio del contador.
          FloatingActionButton(
            onPressed: () {
              clickCounter = 0; // Reinicia el contador.
              setState(() {}); // Notifica a Flutter para redibujar la interfaz de usuario.
            },
            child: const Icon(Icons.refresh_outlined), // Icono del botón.
          ),
          const SizedBox(height: 10), // Espacio entre los botones.

          // Botón de incremento del contador.
          FloatingActionButton(
            shape: const StadiumBorder(), // Forma del botón como estadio (forma ovalada).
            onPressed: () {
              clickCounter++; // Incrementa el contador.
              setState(() {}); // Notifica a Flutter para redibujar la interfaz de usuario.
            },
            child: const Icon(Icons.plus_one), // Icono del botón.
          ),
          const SizedBox(height: 10), // Espacio entre los botones.

          // Botón de decremento del contador (si el contador es mayor que 0).
          FloatingActionButton(
            shape: const StadiumBorder(), // Forma del botón como estadio (forma ovalada).
            onPressed: () {
              if (clickCounter > 0) {
                clickCounter--; // Decrementa el contador si es mayor que 0.
              }
              setState(() {}); // Notifica a Flutter para redibujar la interfaz de usuario.
            },
            child: const Icon(Icons.exposure_minus_1_outlined), // Icono del botón.
          ),
        ],
      ),
    );
  }
}
