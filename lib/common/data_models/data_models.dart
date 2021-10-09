class MovieList {
  final List<MovieItem> ?movies;

  MovieList({this.movies});

}

class MovieItem {
  int ?id;
  String ?name;
  String ?imgUrl;

  MovieItem({ this.id, this.name, this.imgUrl});
}

List<MovieItem> movieItems = [
  MovieItem(id: 1, name: "Venom"),
  MovieItem(id: 2, name: "Venom"),
  MovieItem(id: 3, name: "Venom"),
  MovieItem(id: 4, name: "Venom"),
];