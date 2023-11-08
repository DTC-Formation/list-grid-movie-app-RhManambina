import 'package:flutter/material.dart';
import 'package:projet/model/film.dart';
import 'package:projet/screens/film_details_screen.dart';

class FilmListScreen extends StatelessWidget {
  FilmListScreen(Film film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Film ')),
      ),
      body: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: filmList.length,
          itemBuilder: (context, index) {
            //Maka ilay valeur any anaty fichier film.dart
            Film film = filmList[index];
            return Card(
              child: ListTile(
                title: Text(film.title),
                subtitle: Text(film.genre),
                // leading: Image.network(film.poster),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilmDetailScreen(film)));
                },
              ),
            );
          }),
    );
  }
}
