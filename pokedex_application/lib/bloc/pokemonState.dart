import '../models/pokemonModel.dart';

abstract class PokemonState {}

class PokemonInitialState extends PokemonState {}

class PokemonLoadingState extends PokemonState {}

class PokemonLoadSuccessState extends PokemonState {
  final List<Pokemon> pokemonLis;
  PokemonLoadSuccessState({required this.pokemonLis});
}

class PokemonLoadFaildState extends PokemonState {
  final String errorMessage;
  PokemonLoadFaildState({required this.errorMessage});
}
