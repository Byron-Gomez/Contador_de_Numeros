// Importa las clases necesarias desde otros archivos.
import 'package:contador_numeros/presentacion_screen/counter_funtions_screen.dart';
import 'package:contador_numeros/presentacion_screen/counter_screen.dart';
import 'package:flutter/material.dart';

// Función principal de la aplicación.
void main() {
  // Ejecuta la aplicación Flutter con MyApp como raíz.
  runApp(const MyApp());
}

// Define la clase MyApp como un widget StatelessWidget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Constructor con un parámetro key opcional.

  @override
  Widget build(BuildContext context) {
    // Devuelve un MaterialApp que define la estructura de la aplicación.
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de depuración en la esquina superior derecha.
      theme: ThemeData(
        useMaterial3: true, // Habilita el uso de Material 3.
        colorSchemeSeed: Colors.cyan, // Define el esquema de colores de la aplicación como cian.
      ),
      home: const CounterFuntionScreen(), // Establece la pantalla inicial como CounterFuntionScreen.
    );
  }

  // Este widget es la raíz de tu aplicación.
}
