import 'package:projet/model/data.dart';

class Film {
  String title;
  int year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String poster;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String type;
  String images;
  Film(
      {required this.title,
      required this.year,
      required this.rated,
      required this.released,
      required this.runtime,
      required this.genre,
      required this.director,
      required this.writer,
      required this.actors,
      required this.plot,
      required this.language,
      required this.country,
      required this.poster,
      required this.metascore,
      required this.imdbRating,
      required this.imdbVotes,
      required this.type,
      required this.images});
}

List<Film> filmList = data
    .map((e) => Film(
        title: e["title"] as String,
        year: e["year"] as int,
        rated: e["rated"] as String,
        released: e["released"] as String,
        runtime: e["runtime"] as String,
        genre: e["genre"] as String,
        director: e["director"] as String,
        writer: e["writer"] as String,
        actors: e["actors"] as String,
        plot: e["plot"] as String,
        language: e["language"] as String,
        country: e["country"] as String,
        poster: e["poster"] as String,
        metascore: e["metascore"] as String,
        imdbRating: e["imdbRating"] as String,
        imdbVotes: e["imdbVotes"] as String,
        type: e["type"] as String,
        images: e["images"] as String))
    .toList();
// List<Film> filmList = [



//   Film(

//   ),
//   Film(

//   ),
//   Film(
//     
//   ),
//   Film(
//     
//   ),
//   Film(

//   ),
//   Film(

//   ),
//   Film(

//   ),
// ];
