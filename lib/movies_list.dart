// ignore_for_file: public_member_api_docs, sort_constructors_first
class MoviesDB {
  double? averageRating;
  String? backdropPath;
  List<Results>? results;
  Comments? comments;
  CreatedBy? createdBy;
  String? description;
  int? id;
  String? iso31661;
  String? iso6391;
  int? itemCount;
  String? name;
  ObjectIds? objectIds;
  int? page;
  String? posterPath;
  bool? public;
  int? revenue;
  int? runtime;
  String? sortBy;
  int? totalPages;
  int? totalResults;

  MoviesDB(
      {this.averageRating,
      this.backdropPath,
      this.results,
      this.comments,
      this.createdBy,
      this.description,
      this.id,
      this.iso31661,
      this.iso6391,
      this.itemCount,
      this.name,
      this.objectIds,
      this.page,
      this.posterPath,
      this.public,
      this.revenue,
      this.runtime,
      this.sortBy,
      this.totalPages,
      this.totalResults});

  MoviesDB.fromJson(Map<String, dynamic> json) {
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    comments =
        json['comments'] != null ? Comments.fromJson(json['comments']) : null;
    createdBy = json['created_by'] != null
        ? CreatedBy.fromJson(json['created_by'])
        : null;
    description = json['description'];
    id = json['id'];
    iso31661 = json['iso_3166_1'];
    iso6391 = json['iso_639_1'];
    itemCount = json['item_count'];
    name = json['name'];
    objectIds = json['object_ids'] != null
        ? ObjectIds.fromJson(json['object_ids'])
        : null;
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['average_rating'] = averageRating;
    data['backdrop_path'] = backdropPath;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    if (comments != null) {
      data['comments'] = comments!.toJson();
    }
    if (createdBy != null) {
      data['created_by'] = createdBy!.toJson();
    }
    data['description'] = description;
    data['id'] = id;
    data['iso_3166_1'] = iso31661;
    data['iso_639_1'] = iso6391;
    data['item_count'] = itemCount;
    data['name'] = name;
    if (objectIds != null) {
      data['object_ids'] = objectIds!.toJson();
    }
    data['page'] = page;
    data['poster_path'] = posterPath;
    data['public'] = public;
    data['revenue'] = revenue;
    data['runtime'] = runtime;
    data['sort_by'] = sortBy;
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }

  @override
  String toString() {
    return 'MoviesDB(averageRating: $averageRating, backdropPath: $backdropPath, results: $results, comments: $comments, createdBy: $createdBy, description: $description, id: $id, iso31661: $iso31661, iso6391: $iso6391, itemCount: $itemCount, name: $name, objectIds: $objectIds, page: $page, posterPath: $posterPath, public: $public, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }
}

class Results {
  String? backdropPath;
  int? id;
  String? title;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? mediaType;
  bool? adult;
  String? originalLanguage;
  List<int>? genreIds;
  double? popularity;
  String? releaseDate;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Results(
      {this.backdropPath,
      this.id,
      this.title,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.adult,
      this.originalLanguage,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount});

  Results.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];
    id = json['id'];
    title = json['title'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    adult = json['adult'];
    originalLanguage = json['original_language'];
    genreIds = json['genre_ids'].cast<int>();
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backdrop_path'] = backdropPath;
    data['id'] = id;
    data['title'] = title;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['media_type'] = mediaType;
    data['adult'] = adult;
    data['original_language'] = originalLanguage;
    data['genre_ids'] = genreIds;
    data['popularity'] = popularity;
    data['release_date'] = releaseDate;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }

  @override
  String toString() {
    return 'Results(backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, adult: $adult, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }
}

class Comments {
  Null movie986056;
  Null movie822119;
  Null movie533535;
  Null movie609681;
  Null movie447365;
  Null movie640146;
  Null movie505642;
  Null movie616037;
  Null movie453395;
  Null movie634649;
  Null movie524434;
  Null movie566525;
  Null movie497698;
  Null movie429617;
  Null movie299534;
  Null movie299537;
  Null movie363088;
  Null movie299536;
  Null movie284054;
  Null movie284053;

  Comments(
      {this.movie986056,
      this.movie822119,
      this.movie533535,
      this.movie609681,
      this.movie447365,
      this.movie640146,
      this.movie505642,
      this.movie616037,
      this.movie453395,
      this.movie634649,
      this.movie524434,
      this.movie566525,
      this.movie497698,
      this.movie429617,
      this.movie299534,
      this.movie299537,
      this.movie363088,
      this.movie299536,
      this.movie284054,
      this.movie284053});

  Comments.fromJson(Map<String, dynamic> json) {
    movie986056 = json['movie:986056'];
    movie822119 = json['movie:822119'];
    movie533535 = json['movie:533535'];
    movie609681 = json['movie:609681'];
    movie447365 = json['movie:447365'];
    movie640146 = json['movie:640146'];
    movie505642 = json['movie:505642'];
    movie616037 = json['movie:616037'];
    movie453395 = json['movie:453395'];
    movie634649 = json['movie:634649'];
    movie524434 = json['movie:524434'];
    movie566525 = json['movie:566525'];
    movie497698 = json['movie:497698'];
    movie429617 = json['movie:429617'];
    movie299534 = json['movie:299534'];
    movie299537 = json['movie:299537'];
    movie363088 = json['movie:363088'];
    movie299536 = json['movie:299536'];
    movie284054 = json['movie:284054'];
    movie284053 = json['movie:284053'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['movie:986056'] = movie986056;
    data['movie:822119'] = movie822119;
    data['movie:533535'] = movie533535;
    data['movie:609681'] = movie609681;
    data['movie:447365'] = movie447365;
    data['movie:640146'] = movie640146;
    data['movie:505642'] = movie505642;
    data['movie:616037'] = movie616037;
    data['movie:453395'] = movie453395;
    data['movie:634649'] = movie634649;
    data['movie:524434'] = movie524434;
    data['movie:566525'] = movie566525;
    data['movie:497698'] = movie497698;
    data['movie:429617'] = movie429617;
    data['movie:299534'] = movie299534;
    data['movie:299537'] = movie299537;
    data['movie:363088'] = movie363088;
    data['movie:299536'] = movie299536;
    data['movie:284054'] = movie284054;
    data['movie:284053'] = movie284053;
    return data;
  }
}

class CreatedBy {
  String? avatarPath;
  String? gravatarHash;
  String? id;
  String? name;
  String? username;

  CreatedBy(
      {this.avatarPath, this.gravatarHash, this.id, this.name, this.username});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    avatarPath = json['avatar_path'];
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avatar_path'] = avatarPath;
    data['gravatar_hash'] = gravatarHash;
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    return data;
  }
}

class ObjectIds {
  ObjectIds.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}
