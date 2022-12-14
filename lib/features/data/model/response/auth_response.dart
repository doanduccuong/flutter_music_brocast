import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';

part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
     @Default("") String code,
     @Default("") String state,
    // @Default("") @JsonKey(name: "access_token") final String accessToken,
    // @Default("Bearer") @JsonKey(name: "token_type") final String tokenType,
    // @Default("")  final String scope,
    // @Default(0) @JsonKey(name: "expires_in") final int expiresIn,
    // @Default("") @JsonKey(name: "refresh_token") final String refreshToken,

  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, Object?> json) => _$AuthResponseFromJson(json);
}
