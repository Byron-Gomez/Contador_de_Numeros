import 'package:contador_numeros/presentacion_screen/counter_funtions_screen.dart';
import 'package:contador_numeros/presentacion_screen/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.cyan
    ),
    home:const CounterFuntionScreen(),
   );
  }

  // This widget is the root of your application.

}

