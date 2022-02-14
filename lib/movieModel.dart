class MovieModel {
  int id;
  String title;
  String overview;
  String poster_path;
  String release_date;
  MovieModel(this.poster_path,
      {required this.id,
      required this.title,
      required this.overview,
      required this.release_date}) {
    this.poster_path = "https://image.tmdb.org/t/p/w500/" + this.poster_path;
  }
}
