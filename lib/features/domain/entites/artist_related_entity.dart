class ArtistRelatedEntity {
  final List<Artists>? artists;

  ArtistRelatedEntity({
    this.artists,
  });

  ArtistRelatedEntity.fromJson(Map<String, dynamic> json)
      : artists = (json['artists'] as List?)?.map((dynamic e) => Artists.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'artists' : artists?.map((e) => e.toJson()).toList()
  };
}

class Artists {
  final ExternalUrls? externalUrls;
  final Followers? followers;
  final List<String>? genres;
  final String? id;
  final List<Images>? images;
  final String? name;
  final int? popularity;
  final String? type;
  final String? uri;

  Artists({
    this.externalUrls,
    this.followers,
    this.genres,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  Artists.fromJson(Map<String, dynamic> json)
      : externalUrls = (json['external_urls'] as Map<String,dynamic>?) != null ? ExternalUrls.fromJson(json['external_urls'] as Map<String,dynamic>) : null,
        followers = (json['followers'] as Map<String,dynamic>?) != null ? Followers.fromJson(json['followers'] as Map<String,dynamic>) : null,
        genres = (json['genres'] as List?)?.map((dynamic e) => e as String).toList(),
        id = json['id'] as String?,
        images = (json['images'] as List?)?.map((dynamic e) => Images.fromJson(e as Map<String,dynamic>)).toList(),
        name = json['name'] as String?,
        popularity = json['popularity'] as int?,
        type = json['type'] as String?,
        uri = json['uri'] as String?;

  Map<String, dynamic> toJson() => {
    'external_urls' : externalUrls?.toJson(),
    'followers' : followers?.toJson(),
    'genres' : genres,
    'id' : id,
    'images' : images?.map((e) => e.toJson()).toList(),
    'name' : name,
    'popularity' : popularity,
    'type' : type,
    'uri' : uri
  };
}

class ExternalUrls {
  final String? spotify;

  ExternalUrls({
    this.spotify,
  });

  ExternalUrls.fromJson(Map<String, dynamic> json)
      : spotify = json['spotify'] as String?;

  Map<String, dynamic> toJson() => {
    'spotify' : spotify
  };
}

class Followers {
  final dynamic href;
  final int? total;

  Followers({
    this.href,
    this.total,
  });

  Followers.fromJson(Map<String, dynamic> json)
      : href = json['href'],
        total = json['total'] as int?;

  Map<String, dynamic> toJson() => {
    'href' : href,
    'total' : total
  };
}

class Images {
  final int? height;
  final String? url;
  final int? width;

  Images({
    this.height,
    this.url,
    this.width,
  });

  Images.fromJson(Map<String, dynamic> json)
      : height = json['height'] as int?,
        url = json['url'] as String?,
        width = json['width'] as int?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'url' : url,
    'width' : width
  };
}