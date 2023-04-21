import 'package:flutter/foundation.dart';

import 'badge_model.dart';

class PokemonLiteModel {
  final String id;
  final String name;
  final String imageUrl;
  final List<BadgeModel> types;
  PokemonLiteModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
  });

  PokemonLiteModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    List<BadgeModel>? types,
  }) {
    return PokemonLiteModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      types: types ?? this.types,
    );
  }

  @override
  String toString() {
    return 'PokemonLiteModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
  }

  @override
  bool operator ==(covariant PokemonLiteModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        listEquals(other.types, types);
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ types.hashCode;
  }
}
