 import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

const CounterScreen({ super.key});
 
 @override
 State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Numeros'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              '$clickCounter',
              style: TextStyle(
                fontSize: 169,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text('Click${clickCounter ==1 ? '':'s'}',style: const TextStyle(fontSize: 25),),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
          // Agrega la lógica para manejar el clic del botón flotante aquí
        },
        child: const Icon(Icons.plus_one),
      ),

     /*  floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter--;
          });
          // Agrega la lógica para manejar el clic del botón flotante aquí
        },
        child: const Icon(Icons.restore),
      ), */
     
    );
  }
}
