import 'package:flutter/material.dart';

class DefaultGameDetailScreen extends StatelessWidget {
  final String gameName;

  DefaultGameDetailScreen({required this.gameName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Videojuego'),
      ),
      body: Center(
        child: Text(
          'No hay detalles disponibles para $gameName.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
