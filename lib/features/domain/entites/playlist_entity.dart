class PlaylistEntity {
  final bool? collaborative;
  final String? description;
  final Followers? followers;
  final List<Images>? images;
  final String? name;
  final Owner? owner;
  final bool? public;
  final Tracks? tracks;
  final String? uri;

  PlaylistEntity({
    this.collaborative,
    this.description,
    this.followers,
    this.images,
    this.name,
    this.owner,
    this.public,
    this.tracks,
    this.uri,
  });

  PlaylistEntity.fromJson(Map<String, dynamic> json)
      : collaborative = json['collaborative'] as bool?,
        description = json['description'] as String?,
        followers = (json['followers'] as Map<String,dynamic>?) != null ? Followers.fromJson(json['followers'] as Map<String,dynamic>) : null,
        images = (json['images'] as List?)?.map((dynamic e) => Images.fromJson(e as Map<String,dynamic>)).toList(),
        name = json['name'] as String?,
        owner = (json['owner'] as Map<String,dynamic>?) != null ? Owner.fromJson(json['owner'] as Map<String,dynamic>) : null,
        public = json['public'] as bool?,
        tracks = (json['tracks'] as Map<String,dynamic>?) != null ? Tracks.fromJson(json['tracks'] as Map<String,dynamic>) : null,
        uri = json['uri'] as String?;

  Map<String, dynamic> toJson() => {
    'collaborative' : collaborative,
    'description' : description,
    'followers' : followers?.toJson(),
    'images' : images?.map((e) => e.toJson()).toList(),
    'name' : name,
    'owner' : owner?.toJson(),
    'public' : public,
    'tracks' : tracks?.toJson(),
    'uri' : uri
  };
}

class Followers {
  final int? total;

  Followers({
    this.total,
  });

  Followers.fromJson(Map<String, dynamic> json)
      : total = json['total'] as int?;

  Map<String, dynamic> toJson() => {
    'total' : total
  };
}

class Images {
  final dynamic height;
  final String? url;
  final dynamic width;

  Images({
    this.height,
    this.url,
    this.width,
  });

  Images.fromJson(Map<String, dynamic> json)
      : height = json['height'],
        url = json['url'] as String?,
        width = json['width'];

  Map<String, dynamic> toJson() => {
    'height' : height,
    'url' : url,
    'width' : width
  };
}

class Owner {
  final String? displayName;
  final String? id;
  final String? uri;

  Owner({
    this.displayName,
    this.id,
    this.uri,
  });

  Owner.fromJson(Map<String, dynamic> json)
      : displayName = json['display_name'] as String?,
        id = json['id'] as String?,
        uri = json['uri'] as String?;

  Map<String, dynamic> toJson() => {
    'display_name' : displayName,
    'id' : id,
    'uri' : uri
  };
}

class Tracks {
  final List<Items>? items;
  final int? total;

  Tracks({
    this.items,
    this.total,
  });

  Tracks.fromJson(Map<String, dynamic> json)
      : items = (json['items'] as List?)?.map((dynamic e) => Items.fromJson(e as Map<String,dynamic>)).toList(),
        total = json['total'] as int?;

  Map<String, dynamic> toJson() => {
    'items' : items?.map((e) => e.toJson()).toList(),
    'total' : total
  };
}

class Items {
  final Track? track;

  Items({
    this.track,
  });

  Items.fromJson(Map<String, dynamic> json)
      : track = (json['track'] as Map<String,dynamic>?) != null ? Track.fromJson(json['track'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'track' : track?.toJson()
  };
}

class Track {
  final int? durationMs;
  final String? type;

  Track({
    this.durationMs,
    this.type,
  });

  Track.fromJson(Map<String, dynamic> json)
      : durationMs = json['duration_ms'] as int?,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() => {
    'duration_ms' : durationMs,
    'type' : type
  };
}