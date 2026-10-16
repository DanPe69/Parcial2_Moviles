import 'dart:math';
import 'package:flutter/material.dart';

class Moneda extends StatefulWidget {
  const Moneda({super.key});

  @override
  State<Moneda> createState() => _MonedaState();
}

class _MonedaState extends State<Moneda> {
  int numero = 0;
  String Resultado = "";

  void Lanzamiento() {
    setState(() {
      numero = Random().nextInt(100) + 1;
      if(numero % 2 == 0){
        Resultado = "Cara";
      }else{
        Resultado = "Sello";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Moneda Aleatorea',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '$Resultado',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: Lanzamiento,
            child: const Text('Jugar'),
          ),
        ],
      ),
    );
  }
}