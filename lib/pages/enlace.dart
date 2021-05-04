import 'package:flutter/material.dart';
 
class Enlace extends StatelessWidget {
 
  final opciones;
 
  Enlace(this.opciones);
 
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Opcion'),
        ),
        body: Center(
            child: Text('Seleccionado'),
          ),
        );
  }
}