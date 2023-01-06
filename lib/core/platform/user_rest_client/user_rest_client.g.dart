// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UserRestClient implements UserRestClient {
  _UserRestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AlbumEntity> getAlbums(ids) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ids': ids};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AlbumEntity>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/albums/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AlbumEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ArtistEntity> getArtists(ids, {offset = "0", limit = "100"}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'offset': offset,
      r'limit': limit
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ArtistEntity>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/artists/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ArtistEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ArtistRelatedEntity> getArtistsRelated(
      {ids = LocationAPIConfig.artistRelatedId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': ids};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ArtistRelatedEntity>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/artist_related/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ArtistRelatedEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlaylistEntity> getPlayList(
      {ids = LocationAPIConfig.playlistId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': ids};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlaylistEntity>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/playlist/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlaylistEntity.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
