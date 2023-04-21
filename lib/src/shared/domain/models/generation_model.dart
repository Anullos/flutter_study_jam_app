import 'package:flutter/foundation.dart';

class GenerationModel {
  final String id;
  final String name;
  final List<String> pokemonSpecies;
  GenerationModel({
    required this.id,
    required this.name,
    required this.pokemonSpecies,
  });

  GenerationModel copyWith({
    String? id,
    String? name,
    List<String>? pokemonSpecies,
  }) {
    return GenerationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      pokemonSpecies: pokemonSpecies ?? this.pokemonSpecies,
    );
  }

  @override
  String toString() =>
      'GenerationModel(id: $id, name: $name, pokemonSpecies: $pokemonSpecies)';

  @override
  bool operator ==(covariant GenerationModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        listEquals(other.pokemonSpecies, pokemonSpecies);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ pokemonSpecies.hashCode;
}
