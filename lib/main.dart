import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getListagemAPI();
  }

  void _getListagemAPI() {
    http.get(
      Uri.https('api.themoviedb.org', '/4/list/1'),
      headers: {
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMTcwNWVjY2EyYmU2OWQyMmMyZGRhYjQxOTMzYmY4OCIsIm5iZiI6MTczMjM4ODY5MS4xNzEyNjczLCJzdWIiOiI2NWIxOWE1MTBmMmZiZDAxNGE2NjUzOTEiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.bVTdQ9G4l1baZF-6sJ6Zbn4UzsOmYAK0rMYU9fYQ-0Q',
        'content-type': 'application/json;charset-utf-8'
      },
    ).then((Response value) => print(value.body));
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
