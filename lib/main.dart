import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:moveis_api_v2/movies_list.dart';
import 'package:moveis_api_v2/movies_list_error.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MoviesDB? movies;
  MoviesListError? moviesListError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getListagemAPI();
  }

  Future<void> _getListagemAPI() async {
    http.get(
      Uri.https('api.themoviedb.org', '/4/list/3'),
      headers: {
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMTcwNWVjY2EyYmU2OWQyMmMyZGRhYjQxOTMzYmY4OCIsIm5iZiI6MTczMjM4ODY5MS4xNzEyNjczLCJzdWIiOiI2NWIxOWE1MTBmMmZiZDAxNGE2NjUzOTEiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.bVTdQ9G4l1baZF-6sJ6Zbn4UzsOmYAK0rMYU9fYQ-0Q',
        'content-type': 'application/json;charset-utf-8'
      },
    ).then(
      (Response value) {
        if (value.statusCode == 200) {
          movies = MoviesDB.fromJson(
            jsonDecode(value.body),
          );
        } else if ([401, 404, 500].contains(value.statusCode)) {
          moviesListError = MoviesListError.fromJson(
            jsonDecode(value.body),
          );
        }
      },
    ).whenComplete(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: moviesListError != null
              ? Text(moviesListError.toString())
              : Text('Movie: ${movies?.name ?? "Erro"}'),
        ),
      ),
    );
  }
}
