import 'package:flutt_muvi/infrastructure/datasources/moviedb_datasources.dart';
import 'package:flutt_muvi/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// provider solo lectura (inmutable)
final movieRepositoryProvider = Provider((ref) {


   return MovieRepositoryImpl(MoviedbDatasource()) ;
});
