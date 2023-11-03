import 'package:dio/dio.dart';
import 'package:flutt_muvi/config/constants/enviroment.dart';
import 'package:flutt_muvi/domain/datasources/movies_datasources.dart';
import 'package:flutt_muvi/domain/entities/movie.dart';

class MoviedbDatasource extends MoviesDatasource {

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Enviroment.theMovieDbKey,
      'language': 'es-MX'
    }
    
    
    
    
    
    ),
   );





  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    
    
    
    return [];
  }
}
