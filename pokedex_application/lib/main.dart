import 'package:flutter/material.dart';
import 'package:pokedex_application/screens/pokemonsPage.dart';

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      home: PokemonsPageScreen(),
    );
  }
}
