import 'package:flutter/material.dart';

class PantallaNoticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.deepPurple, Colors.greenAccent],
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ya se han anunciado todos los juegos de PS Plus en marzo de 2024. '
                          'Cuatro títulos que se añaden al catálogo de PlayStation Plus Essential, los cuales podrás descargar y jugar tanto en PS5 y PS4. '
                          'Los juegos estarán disponibles para descargar el próximo 5 de marzo (la fecha límite es el 1 de abril).'
                          'Juegos de PS Plus en marzo de 2023: Sifu (PS5 y PS4) | Destiny 2: La reina bruja (PS5 y PS4) | F1 23 (PS5 y PS4) | Hello Neighbor 2 (PS5 y PS4)'
                      ,

                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 500,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/juegos.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
