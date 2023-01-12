import 'dart:io';

import 'package:oauth2/oauth2.dart' as oauth2;

const CLIENT_ID = "acf73440d1604f0caa90e51a1240c08f";
const CLIENT_SECRET = "95b66bd88f3a440497f47c53fcd62796";
const CALL_BACK_URL = "https://cuongdd1.com/callback";
const AUTH_URL = " https://accounts.spotify.com/authorize";
const ACCESS_TOKEN_URL = " https://accounts.spotify.com/api/token";
const SCOPE = "user-read-private user-read-email";
const STATE = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";

final authorizationEndpoint = Uri.parse('https://accounts.spotify.com/authorize');
final tokenEndpoint = Uri.parse('https://accounts.spotify.com/api/token');
const identifier = 'acf73440d1604f0caa90e51a1240c08f';
const clientSecret = '95b66bd88f3a440497f47c53fcd62796';
final callBackUrl = Uri.parse("https://cuongdd1.com/callback");
final credentialsFile = File('~/.myapp/credentials.json');
Future<oauth2.Client> createClient() async {
  var exists = await credentialsFile.exists();

  // If the OAuth2 credentials have already been saved from a previous run, we
  // just want to reload them.
  if (exists) {
    var credentials = oauth2.Credentials.fromJson(await credentialsFile.readAsString());
    return oauth2.Client(credentials, identifier: identifier, secret: clientSecret);
  }

  // If we don't have OAuth2 credentials yet, we need to get the resource owner
  // to authorize us. We're assuming here that we're a command-line application.
  var grant = oauth2.AuthorizationCodeGrant(identifier, authorizationEndpoint, tokenEndpoint, secret: clientSecret);

  // A URL on the authorization server (authorizationEndpoint with some additional
  // query parameters). Scopes and state can optionally be passed into this method.
  var authorizationUrl = grant.getAuthorizationUrl(callBackUrl);

  // Redirect the resource owner to the authorization URL. Once the resource
  // owner has authorized, they'll be redirected to `redirectUrl` with an
  // authorization code. The `redirect` should cause the browser to redirect to
  // another URL which should also have a listener.
  //
  // `redirect` and `listen` are not shown implemented here. See below for the
  // details.
  Future<void> redirect(Uri url) async {
    // Client implementation detail
  }

  Future<Uri> listen(Uri url) async {
    // Client implementation detail
    return Uri(queryParameters: {
      "response_type": 'code',
      "client_id": CLIENT_ID,
      "scope": SCOPE,
      "redirect_uri": CALL_BACK_URL,
      "state": STATE,
      "code" : "sdadsa"
    });
  }

  await redirect(authorizationUrl);
  var responseUrl = await listen(callBackUrl);
  print("come here");

  // Once the user is redirected to `redirectUrl`, pass the query parameters to
  // the AuthorizationCodeGrant. It will validate them and extract the
  // authorization code to create a new Client.
  print(responseUrl.queryParameters);
  return await grant.handleAuthorizationResponse(responseUrl.queryParameters);
}
