import 'package:flutter/material.dart';

class PokemonsPageScreen extends StatefulWidget {
  const PokemonsPageScreen({super.key});

  @override
  State<PokemonsPageScreen> createState() => _PokemonsPageScreen();
}

class _PokemonsPageScreen extends State<PokemonsPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pokedex'),
      ),
      body: Center(child: Text('Here will be list of card with pokemon')),
    );
  }
}
