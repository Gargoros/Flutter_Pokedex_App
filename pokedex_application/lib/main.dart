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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              accentColor: Colors.black, primarySwatch: Colors.red),
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: TextStyle(
                  fontSize: 20,
                  fontFamily: "RobotoCondensed",
                  fontWeight: FontWeight.bold))),
      home: PokemonsPageScreen(),
    );
  }
}
