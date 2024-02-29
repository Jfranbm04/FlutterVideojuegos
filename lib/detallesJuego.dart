import 'package:flutter/material.dart';

class GameDetailScreen extends StatelessWidget {
  final String gameName;

  GameDetailScreen({required this.gameName});

  // Mapa que asocia cada videojuego con su imagen y descripción correspondientes
  final Map<String, GameDetails> gameDetailsMap = {
    'Call Of Duty': GameDetails(
        imagePath: 'assets/cod.png',
        description: 'Call of Duty es una serie de videojuegos de disparos en primera persona.'
    ),
    'Fortnite': GameDetails(
        imagePath: 'assets/fortnite.png',
        description: 'Fortnite es un juego de supervivencia en el que hasta 100 jugadores luchan.'
    ),
    'Minecraft': GameDetails(
        imagePath: 'assets/minecraft.png',
        description: 'Minecraft es un juego de construcción y aventuras en un mundo generado al azar.'
    ),
    'Pokemon': GameDetails(
        imagePath: 'assets/pokemon.png',
        description: 'Pokemon es una franquicia de videojuegos creada por Satoshi Tajiri y Ken Sugimori.'
    ),
  };

  @override
  Widget build(BuildContext context) {
    final gameDetails = gameDetailsMap[gameName];

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Videojuego'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                gameDetails!.imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                gameDetails.description,
                style: TextStyle(fontSize: 18, color: Colors.white), // Color blanco para el texto
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameDetails {
  final String imagePath;
  final String description;

  GameDetails({
    required this.imagePath,
    required this.description,
  });
}
