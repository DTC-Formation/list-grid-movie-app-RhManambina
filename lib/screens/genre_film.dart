import 'package:flutter/material.dart';
import 'package:projet/model/film.dart';
import 'package:projet/screens/film_screen.dart';

class GenreFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Genre de film',
        style: TextStyle(color: Colors.white),
      ))),
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20),
              itemCount: filmList.length,
              itemBuilder: (context, index) {
                Film film = filmList[index];
                return GridTile(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.green),
                  child: ListTile(
                    title: Center(
                      child: Container(
                        child: Text(
                          film.genre,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilmListScreen(film)));
                    },
                  ),
                ));
              }),
        ),
      ),
    );
  }
}
