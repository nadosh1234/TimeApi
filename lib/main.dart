import 'package:flutter/material.dart';
import 'package:timeapi/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:timeapi/loaction.dart';
import 'package:timeapi/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {

        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const Location(),
      },

    );
  }
}
