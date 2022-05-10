import 'package:flutter/material.dart';
import 'package:pokemongo/views/View_pokemon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewPokemon(),
    );
  }
}
