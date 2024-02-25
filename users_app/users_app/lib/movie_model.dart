class Movie {
  String? sId;
  String? title;
  String? description;
  String? genre;
  String? releaseDate;
  String? watchDate;
  bool? isWatched;

  Movie({
    this.sId,
    this.title,
    this.description,
    this.genre,
    this.releaseDate,
    this.watchDate,
    this.isWatched,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    genre = json['genre'];
    releaseDate = json['releaseDate'];
    watchDate = json['watchDate'];
    isWatched = json['isWatched'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (data['_id'] != null) data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['genre'] = this.genre;
    data['releaseDate'] = this.releaseDate;
    data['watchDate'] = this.watchDate;
    data['isWatched'] = this.isWatched;
    return data;
  }
}
