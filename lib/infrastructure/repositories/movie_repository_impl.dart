import 'package:flutt_muvi/domain/datasources/movies_datasources.dart';
import 'package:flutt_muvi/domain/entities/movie.dart';
import 'package:flutt_muvi/domain/repositories/movies_repositories.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
