//convert json to dart

//main data

class PokemonHub {
  int? count;
  String? next;
  String? previous;
  List<Pokemon>? results;

  PokemonHub({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  PokemonHub.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'] ?? "";
    if (json['results'] != null) {
      results = <Pokemon>[];
      json['results'].forEach((v) {
        results!.add(Pokemon.fromJson(v));
      });
    }
  }
}

//Pokemon list data
class Pokemon {
  String? name;
  String? url;

  Pokemon({this.name, this.url});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}
