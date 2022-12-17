import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    title: 'MyApp',
    home: const Homepage(
      home: '',
    ),
  ));
}
