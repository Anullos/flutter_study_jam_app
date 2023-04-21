import 'dart:convert';

import '../../domain/models/generation_model.dart';

class GenerationDto {
  final String id;
  final String name;
  final List<String> pokemonSpecies;
  GenerationDto({
    required this.id,
    required this.name,
    required this.pokemonSpecies,
  });
  GenerationDto._({
    required this.id,
    required this.name,
    required this.pokemonSpecies,
  });

  static GenerationDto fromDomain(GenerationModel domain) {
    return GenerationDto._(
      id: domain.id,
      name: domain.name,
      pokemonSpecies: domain.pokemonSpecies,
    );
  }

  GenerationModel toDomain() {
    return GenerationModel(
      id: id,
      name: name,
      pokemonSpecies: pokemonSpecies,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'pokemonSpecies': pokemonSpecies,
    };
  }

  factory GenerationDto.fromMap(Map<String, dynamic> map) {
    return GenerationDto(
      id: map['id'] as String,
      name: map['name'] as String,
      pokemonSpecies:
          List<String>.from((map['pokemonSpecies'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationDto.fromJson(String source) =>
      GenerationDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
