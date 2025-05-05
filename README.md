<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
part 'login.api.g.dart';

@RestApi()
abstract class LoginApi {
  factory LoginApi() => _LoginApi();

  @POST("app/login")
  HttpApi<UserEntity> login(@Body() LoginRequest request);

  @GET("app/{userId}")
  HttpApi<UserEntity?> getUser(@Path() String userId);
}
```

Then run the build_runner by 'flutter packages pub run build_runner build'.

You can get the following information from the generated HttpApi:
```dart
/// @Method
String method;

/// Url of @Method and @Path
String url;

/// baseUrl in @HttpApi
String? baseUrl;

/// @Body
Object? body;

/// @Query
Map<String, dynamic>? queryParams;

/// @Field
Map<String, dynamic>? fields;

/// @FormUrlEncoded
bool formUrlEncoded;

/// Type of response, as T
Type responseType;

/// @FromJson
FromJsonTransform<RESPONSE>? fromJson;

/// @Options, contains headers, responseType, receiveTimeout, sendTimeout
final HttpOptions? options;
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
