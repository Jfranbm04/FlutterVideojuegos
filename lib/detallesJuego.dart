import 'package:flutter/material.dart';
import 'package:proyectoflutter03/Juego.dart';

class GameDetailScreen extends StatelessWidget {
  final String gameName;

  GameDetailScreen({required this.gameName});

  final Map<String, Juego> gameDetailsMap = {
    'Call Of Duty': Juego(
        imagePath: 'assets/cod.png',
        description:
            'Call of Duty es una popular serie de videojuegos de disparos en primera persona (FPS). Con numerosas entregas y expansiones, la serie se centra en diversas guerras y conflictos militares, ofreciendo experiencias realistas de combate. Los juegos de Call of Duty suelen destacar por su intensidad, acción trepidante, modos multijugador competitivos y campañas emocionantes que sumergen a los jugadores en escenarios bélicos.'),
    'Fortnite': Juego(
        imagePath: 'assets/fortnite.png',
        description:
            'Fortnite es un juego de supervivencia y construcción desarrollado por Epic Games. Con su modo Battle Royale como principal atracción, los jugadores son lanzados a un mapa abierto donde deben recolectar recursos, construir estructuras defensivas y enfrentarse entre sí hasta que solo quede un equipo o jugador en pie. Fortnite también ofrece modos de juego adicionales, eventos especiales y una estética colorida que lo diferencia de otros juegos del género.'),
    'Minecraft': Juego(
        imagePath: 'assets/minecraft.png',
        description:
            'Minecraft es un juego de mundo abierto y construcción desarrollado por Mojang Studios. Con su enfoque en la creatividad y la exploración, los jugadores pueden explorar un mundo generado proceduralmente, recolectar recursos, construir estructuras y enfrentarse a peligrosas criaturas. Minecraft ofrece una experiencia sandbox única, permitiendo a los jugadores dar rienda suelta a su imaginación para crear impresionantes construcciones y aventuras.'),
    'Pokemon': Juego(
        imagePath: 'assets/pokemon.png',
        description:
            'Pokémon es una franquicia de videojuegos desarrollada por Game Freak y publicada por Nintendo. En los juegos de Pokémon, los jugadores asumen el papel de entrenadores Pokémon que viajan por un mundo lleno de criaturas fantásticas conocidas como Pokémon. El objetivo principal es capturar y entrenar Pokémon para enfrentarse a otros entrenadores y convertirse en el Campeón de la Liga Pokémon. Con una amplia variedad de criaturas, estrategias de batalla y mundos por explorar, la serie Pokémon ha cautivado a jugadores de todas las edades durante décadas.'),
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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.greenAccent],
          ),
        ),
        child: Center(
          child: gameDetails !=
                  null // Verificar si hay detalles disponibles para el juego
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      gameDetails.imagePath,
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 20),
                    Text(
                      gameDetails.description,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : Text(
                  'No hay datos relacionados a este juego',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
