import 'package:flutter/material.dart';
import 'package:projet/model/film.dart';

class FilmDetailScreen extends StatelessWidget {
  final Film film;
  FilmDetailScreen(this.film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Détails du film"))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Image.network(film.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Titre Original :  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    Text(
                      film.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23,
                          fontStyle: FontStyle.italic,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pays : ",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    Text(
                      film.country,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Genre : ",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    Text(
                      film.genre,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auteur : ",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    Text(
                      film.writer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(film.images),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Resumé',
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      film.plot,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Acteurs : ",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      film.actors,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Nombre de votes : ",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      film.imdbVotes,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Rating  : ",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      film.imdbRating,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 17.0),
                    ),
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
