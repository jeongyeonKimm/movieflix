import 'dart:convert';

import 'package:flutter_challenge_movieflix/model/movie_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';

  static Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> popularMovieInstances = [];
    final url = Uri.parse('$baseUrl/popular');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final popularMovies = jsonDecode(response.body)['results'];
      for (var movie in popularMovies) {
        popularMovieInstances.add(MovieModel.fromJson(movie));
      }
      return popularMovieInstances;
    }
    throw Error();
  }

  static Future<List<MovieModel>> getNowPlayingMovies() async {
    List<MovieModel> nowPlayingInstances = [];
    final url = Uri.parse('$baseUrl/now-playing');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final nowPlayingMovies = jsonDecode(response.body)['results'];
      for (var movie in nowPlayingMovies) {
        nowPlayingInstances.add(MovieModel.fromJson(movie));
      }
      return nowPlayingInstances;
    }
    throw Error();
  }

  static Future<List<MovieModel>> getComingSoonMovies() async {
    List<MovieModel> comingSoonInstances = [];
    final url = Uri.parse('$baseUrl/coming-soon');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final comingSoonMovies = jsonDecode(response.body)['results'];
      for (var movie in comingSoonMovies) {
        comingSoonInstances.add(MovieModel.fromJson(movie));
      }
      return comingSoonInstances;
    }
    throw Error();
  }
}
