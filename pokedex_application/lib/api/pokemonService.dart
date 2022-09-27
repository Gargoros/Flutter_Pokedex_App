import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import '../models/pokemonModel.dart';

//make class to call and fetch JsonData
//https://pokeapi.co/api/v2/pokemon?limit=200&offset=0

// void getPokeServiceData() async {
//   var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=200&offset=0');

//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.get(url);
//   if (response.statusCode == 200) {
//     var jsonResponse = json.decode(response.body) as Map<String, dynamic>;

//     print(jsonResponse);
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }

class PokemonService {
  static Future<PokemonHub> fetchPokemonHub() async {
    try {
      final response = await http.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=200&offset=0'),
      );
      final Map<String, dynamic> decoded = jsonDecode(response.body);
      if (response.statusCode == 200) {
        final pokeResp = PokemonHub.fromJson(decoded);
        return pokeResp;
      } else {
        throw Exception('Failed to load pokemon list');
      }
    } on SocketException {
      throw Exception('Server error');
    } on HttpException {
      throw Exception('Something went wrong');
    } on FormatException {
      throw Exception('Bad request');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
