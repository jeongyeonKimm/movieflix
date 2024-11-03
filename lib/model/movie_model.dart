class MovieModel {
  final String id, title, posterPath, overview;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        posterPath = json['posterPath'],
        overview = json['overview'];
}
