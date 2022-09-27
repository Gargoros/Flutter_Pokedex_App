import 'package:bloc/bloc.dart';
import '../api/pokemonService.dart';
import './pokemonState.dart';
import './pokemonEvent.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonInitialState()) {
    on<PokemonEvent>(
      (event, emit) async {
        emit(PokemonLoadingState());
        try {
          final pokemonList = await PokemonService.fetchPokemonHub();
          emit(PokemonLoadSuccessState(pokemonLis: pokemonList));
        } catch (e) {
          emit(PokemonLoadFaildState(errorMessage: e.toString()));
        }
      },
    );
  }
}
