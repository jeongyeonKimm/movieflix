class MovieModel {
  final int id;
  final String title, posterPath, overview;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        posterPath = json['poster_path'],
        overview = json['overview'];
}
