import 'package:flutter/material.dart';
import 'detallesJuego.dart';
import 'Perfil.dart';

class GameListScreen extends StatefulWidget {
  @override
  _GameListScreenState createState() => _GameListScreenState();
}

class _GameListScreenState extends State<GameListScreen> {
  List<String> games = ["Call Of Duty", "Fortnite", "Minecraft", "Pokemon"]; // Lista de videojuegos


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de Videojuegos'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerfilScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Añadir Juego'),
              onTap: () {
                _addGame();
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Noticias'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade200],
          ),
        ),
        child: ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GameDetailScreen(gameName: games[index]),
                  ),
                );
              },
              child: Card(
                elevation: 5.0,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: ListTile(
                  title: Text(
                    games[index],
                    style: TextStyle(fontSize: 18.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/playstation.png'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addGame();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addGame() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController gameController = TextEditingController();

        return AlertDialog(
          title: Text('Nuevo Videojuego'),
          content: TextField(
            controller: gameController,
            decoration: InputDecoration(hintText: 'Ingrese un videojuego'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (gameController.text.isNotEmpty) {
                  setState(() {
                    games.add(gameController.text);
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}