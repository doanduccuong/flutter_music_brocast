class ArtistEntity {
  final Data? data;
  final Extensions? extensions;

  ArtistEntity({
    this.data,
    this.extensions,
  });

  ArtistEntity.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
        extensions = (json['extensions'] as Map<String,dynamic>?) != null ? Extensions.fromJson(json['extensions'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'data' : data?.toJson(),
    'extensions' : extensions?.toJson()
  };
}

class Data {
  final Artist? artist;

  Data({
    this.artist,
  });

  Data.fromJson(Map<String, dynamic> json)
      : artist = (json['artist'] as Map<String,dynamic>?) != null ? Artist.fromJson(json['artist'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'artist' : artist?.toJson()
  };
}

class Artist {
  final Discography? discography;

  Artist({
    this.discography,
  });

  Artist.fromJson(Map<String, dynamic> json)
      : discography = (json['discography'] as Map<String,dynamic>?) != null ? Discography.fromJson(json['discography'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'discography' : discography?.toJson()
  };
}

class Discography {
  final Albums? albums;

  Discography({
    this.albums,
  });

  Discography.fromJson(Map<String, dynamic> json)
      : albums = (json['albums'] as Map<String,dynamic>?) != null ? Albums.fromJson(json['albums'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'albums' : albums?.toJson()
  };
}

class Albums {
  final int? totalCount;
  final List<Items>? items;

  Albums({
    this.totalCount,
    this.items,
  });

  Albums.fromJson(Map<String, dynamic> json)
      : totalCount = json['totalCount'] as int?,
        items = (json['items'] as List?)?.map((dynamic e) => Items.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'totalCount' : totalCount,
    'items' : items?.map((e) => e.toJson()).toList()
  };
}

class Items {
  final Releases? releases;

  Items({
    this.releases,
  });

  Items.fromJson(Map<String, dynamic> json)
      : releases = (json['releases'] as Map<String,dynamic>?) != null ? Releases.fromJson(json['releases'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'releases' : releases?.toJson()
  };
}

class Releases {
  final List<Items>? items;

  Releases({
    this.items,
  });

  Releases.fromJson(Map<String, dynamic> json)
      : items = (json['items'] as List?)?.map((dynamic e) => Items.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'items' : items?.map((e) => e.toJson()).toList()
  };
}

class ItemsRelease {
  final String? id;
  final String? uri;
  final String? name;
  final String? type;
  final Date? date;
  final CoverArt? coverArt;
  final Playability? playability;
  final SharingInfo? sharingInfo;
  final Tracks? tracks;

  ItemsRelease({
    this.id,
    this.uri,
    this.name,
    this.type,
    this.date,
    this.coverArt,
    this.playability,
    this.sharingInfo,
    this.tracks,
  });

  ItemsRelease.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        uri = json['uri'] as String?,
        name = json['name'] as String?,
        type = json['type'] as String?,
        date = (json['date'] as Map<String,dynamic>?) != null ? Date.fromJson(json['date'] as Map<String,dynamic>) : null,
        coverArt = (json['coverArt'] as Map<String,dynamic>?) != null ? CoverArt.fromJson(json['coverArt'] as Map<String,dynamic>) : null,
        playability = (json['playability'] as Map<String,dynamic>?) != null ? Playability.fromJson(json['playability'] as Map<String,dynamic>) : null,
        sharingInfo = (json['sharingInfo'] as Map<String,dynamic>?) != null ? SharingInfo.fromJson(json['sharingInfo'] as Map<String,dynamic>) : null,
        tracks = (json['tracks'] as Map<String,dynamic>?) != null ? Tracks.fromJson(json['tracks'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'uri' : uri,
    'name' : name,
    'type' : type,
    'date' : date?.toJson(),
    'coverArt' : coverArt?.toJson(),
    'playability' : playability?.toJson(),
    'sharingInfo' : sharingInfo?.toJson(),
    'tracks' : tracks?.toJson()
  };
}

class Date {
  final int? year;
  final String? isoString;

  Date({
    this.year,
    this.isoString,
  });

  Date.fromJson(Map<String, dynamic> json)
      : year = json['year'] as int?,
        isoString = json['isoString'] as String?;

  Map<String, dynamic> toJson() => {
    'year' : year,
    'isoString' : isoString
  };
}

class CoverArt {
  final List<Sources>? sources;

  CoverArt({
    this.sources,
  });

  CoverArt.fromJson(Map<String, dynamic> json)
      : sources = (json['sources'] as List?)?.map((dynamic e) => Sources.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'sources' : sources?.map((e) => e.toJson()).toList()
  };
}

class Sources {
  final String? url;
  final int? width;
  final int? height;

  Sources({
    this.url,
    this.width,
    this.height,
  });

  Sources.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?,
        width = json['width'] as int?,
        height = json['height'] as int?;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'width' : width,
    'height' : height
  };
}

class Playability {
  final bool? playable;
  final String? reason;

  Playability({
    this.playable,
    this.reason,
  });

  Playability.fromJson(Map<String, dynamic> json)
      : playable = json['playable'] as bool?,
        reason = json['reason'] as String?;

  Map<String, dynamic> toJson() => {
    'playable' : playable,
    'reason' : reason
  };
}

class SharingInfo {
  final String? shareId;
  final String? shareUrl;

  SharingInfo({
    this.shareId,
    this.shareUrl,
  });

  SharingInfo.fromJson(Map<String, dynamic> json)
      : shareId = json['shareId'] as String?,
        shareUrl = json['shareUrl'] as String?;

  Map<String, dynamic> toJson() => {
    'shareId' : shareId,
    'shareUrl' : shareUrl
  };
}

class Tracks {
  final int? totalCount;

  Tracks({
    this.totalCount,
  });

  Tracks.fromJson(Map<String, dynamic> json)
      : totalCount = json['totalCount'] as int?;

  Map<String, dynamic> toJson() => {
    'totalCount' : totalCount
  };
}

class Extensions {
  final CacheControl? cacheControl;

  Extensions({
    this.cacheControl,
  });

  Extensions.fromJson(Map<String, dynamic> json)
      : cacheControl = (json['cacheControl'] as Map<String,dynamic>?) != null ? CacheControl.fromJson(json['cacheControl'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'cacheControl' : cacheControl?.toJson()
  };
}

class CacheControl {
  final int? version;
  final List<dynamic>? hints;

  CacheControl({
    this.version,
    this.hints,
  });

  CacheControl.fromJson(Map<String, dynamic> json)
      : version = json['version'] as int?,
        hints = json['hints'] as List?;

  Map<String, dynamic> toJson() => {
    'version' : version,
    'hints' : hints
  };
}