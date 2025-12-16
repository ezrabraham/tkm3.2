import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ReloadlyCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{  "client_id": "GmNPdh7xXoIQ6j8xAw4Q7BCMyDSf0Hld",
  "client_secret": "OFGNhTkYpJ-aE4emI63Wf5SCyKLrJr-KhXUEnxmDV4o869UD9ojw4ED9k6D4JbR",
  "grant_type": "client_credentials",
  "audience": "https://topups-sandbox.reloadly.com"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reloadly',
      apiUrl: 'https://auth.reloadly.com/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AirtimeCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "operatorId": 535,
  "amount": 3168.4,
  "useLocalAmount": false,
  "customIdentifier": "This is example identifier 130",
  "recipientEmail": "peter@nauta.com.cu",
  "recipientPhone": {
    "countryCode": "GB",
    "number": 447951731337
  },
  "senderPhone": {
    "countryCode": "CA",
    "number": 11231231231
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Airtime',
      apiUrl: 'https://topups.reloadly.com/topups',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJraWQiOiI1N2JjZjNhNy01YmYwLTQ1M2QtODQ0Mi03ODhlMTA4OWI3MDIiLCJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMzg0NCIsImlzcyI6Imh0dHBzOi8vcmVsb2FkbHktc2FuZGJveC5hdXRoMC5jb20vIiwiaHR0cHM6Ly9yZWxvYWRseS5jb20vc2FuZGJveCI6dHJ1ZSwiaHR0cHM6Ly9yZWxvYWRseS5jb20vcHJlcGFpZFVzZXJJZCI6IjIzODQ0IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwiYXVkIjoiaHR0cHM6Ly90b3B1cHMtaHMyNTYtc2FuZGJveC5yZWxvYWRseS5jb20iLCJuYmYiOjE3MjE4NjQzMDUsImF6cCI6IjIzODQ0Iiwic2NvcGUiOiJzZW5kLXRvcHVwcyByZWFkLW9wZXJhdG9ycyByZWFkLXByb21vdGlvbnMgcmVhZC10b3B1cHMtaGlzdG9yeSByZWFkLXByZXBhaWQtYmFsYW5jZSByZWFkLXByZXBhaWQtY29tbWlzc2lvbnMiLCJleHAiOjE3MjE5NTA3MDUsImh0dHBzOi8vcmVsb2FkbHkuY29tL2p0aSI6ImVjOTY1YjdkLTlhZDAtNDYwZS1iNDc3LTVjNzRjNWRmMWNkYSIsImlhdCI6MTcyMTg2NDMwNSwianRpIjoiYzYxZTY4ZjktYmIxNi00MDIxLTkxNzctMzllMzgxZDA3NjRiIn0.03uNau12qVBPtkZOqH8XQnPKQZVicm_IfYWpTnmZ1Xg',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImdbcallCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'imdbcall',
      apiUrl: 'https://imdb-top-100-movies.p.rapidapi.com/',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-host': 'imdb-top-100-movies.p.rapidapi.com',
        'x-rapidapi-key': 'd8ddf63d2amsh6caa8a3cdf68180p1aee16jsn2f86559ccd74',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
