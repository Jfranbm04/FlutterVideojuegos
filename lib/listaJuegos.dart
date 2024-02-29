import 'package:flutter/material.dart';
import 'detallesJuego.dart';
import 'Perfil.dart';

class PantallaListaJuegos extends StatefulWidget {
  @override
  _PantallaListaJuegosState createState() => _PantallaListaJuegosState();
}

class _PantallaListaJuegosState extends State<PantallaListaJuegos> {
  List<String> juegos = [
    "Call Of Duty",
    "Fortnite",
    "Minecraft",
    "Pokemon"
  ]; // Lista de videojuegos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luxury Gaming'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurple, Colors.greenAccent],
                ),
              ),
              child: Text(
                'Work hard, Play hard',
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
                    builder: (context) => PantallaPerfil(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Noticias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaPerfil(),
                  ),
                );
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
            colors: [Colors.deepPurple, Colors.greenAccent],
          ),
        ),
        child: ListView.builder(
          itemCount: juegos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaDetallesJuego(nombreJuego: juegos[index]),
                  ),
                );
              },
              child: Card(
                elevation: 5.0,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: ListTile(
                  title: Text(
                    juegos[index],
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
          _agregarJuego();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _agregarJuego() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController controladorJuego = TextEditingController();

        return AlertDialog(
          title: Text('Nuevo Videojuego'),
          content: TextField(
            controller: controladorJuego,
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
                if (controladorJuego.text.isNotEmpty) {
                  setState(() {
                    juegos.add(controladorJuego.text);
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
