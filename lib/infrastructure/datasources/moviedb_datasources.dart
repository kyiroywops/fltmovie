import 'package:dio/dio.dart';
import 'package:flutt_muvi/config/constants/enviroment.dart';
import 'package:flutt_muvi/domain/datasources/movies_datasources.dart';
import 'package:flutt_muvi/domain/entities/movie.dart';
import 'package:flutt_muvi/infrastructure/mappers/movie_mapper.dart';
import 'package:flutt_muvi/infrastructure/models/moviedb/moviedb_response.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
      'api_key': Enviroment.theMovieDbKey,
      'language': 'es-MX'
    }),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');

    final movieDbResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDbResponse.results.where((moviedb) => moviedb.posterPath != 'no hay imagen rey')
    .map((moviedb) => MovieMapper.movieDBToEntity(moviedb)).toList();

    return movies;
  }
}
