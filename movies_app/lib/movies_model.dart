class Movies {
  String? sId;
  String? title;
  String? description;
  String? genre;
  String? releaseDate;
  String? watchDate;
  bool? isWatched;

  Movies(
      {this.sId,
      this.title,
      this.description,
      this.genre,
      this.releaseDate,
      this.watchDate,
      this.isWatched});

  Movies.fromJson(Map<String, dynamic> json) {
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
    data['title'] = this.title;
    data['description'] = this.description;
    data['genre'] = this.genre;
    data['releaseDate'] = this.releaseDate;
    data['watchDate'] = this.watchDate;
    data['isWatched'] = this.isWatched;
    return data;
  }
}
