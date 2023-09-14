 import 'package:flutter/material.dart';

class CounterFuntionScreen extends StatefulWidget{

const CounterFuntionScreen({ super.key});
 
 @override
 State<CounterFuntionScreen> createState() => _CounterFuntionScreenState();
}

class _CounterFuntionScreenState extends State<CounterFuntionScreen> {

int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Funciones'),
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

/*1*/
      floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              clickCounter=0;
              setState(() {});
            },
            child: const Icon(Icons.refresh_outlined),
          ),
          const SizedBox(height: 10),
      

/*2*/
       FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: (){
              clickCounter++;
              setState(() { });
            },
            child: const Icon(Icons.plus_one),

          ),
          const SizedBox(height: 10),

/*3*/
           FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: (){
               if (clickCounter >0 ){
              clickCounter--  ;
               }
              setState(() { });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          )
      ],)
    );
  }
}

