// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../search/search_delegate.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    //print(moviesProvider.onDisplayMovies);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Películas en cines')),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
              icon: Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),

            //slider de peliculas
            MovieSlider(
                movies: moviesProvider.popularmovies,
                title: 'Populares',
                onNextPage: () {
                  moviesProvider.getPopularMovies();
                })
          ],
        ),
      ),
    );
  }
}
