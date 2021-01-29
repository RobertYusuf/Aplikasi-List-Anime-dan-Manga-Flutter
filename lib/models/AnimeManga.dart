class Anime {
  final String titles;
  final String id;
  final String averageRating;
  final String poster;
  final String startDate;
  final String status;
  final String sinopsis;
   // final int userCount;
  Anime(
      { this.titles, this.id, this.averageRating,
          this.poster,this.startDate,this.status,this.sinopsis,
  }
  );
  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      titles: json['attributes']['titles']['en_jp'] as String,
      id: json['id'] as String,
      poster: json['attributes']['posterImage']['medium'] as String,
      averageRating: json['attributes']['averageRating'] as String,
      startDate:json['attributes']['startDate'] as String,
      status:json['attributes']['status'] as String,
      sinopsis:json['attributes']['synopsis'] as String,
      // userCount:json['attributes']['userCount'] as String,
    );
  }
}