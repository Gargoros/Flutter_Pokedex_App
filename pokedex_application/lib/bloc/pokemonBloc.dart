import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import './pokemonState.dart';
import './pokemonEvent.dart';

class PokemonBloc extends Bloc<PokemonState, PokemonEvent> {
  PokemonBloc() : super(null);
}
