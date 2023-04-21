import 'package:flutter/material.dart';

class BadgeModel {
  final String id;
  final String name;
  final String imageUrl;
  final String colorRGB;
  BadgeModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.colorRGB,
  });

  BadgeModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? colorRGB,
  }) {
    return BadgeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      colorRGB: colorRGB ?? this.colorRGB,
    );
  }

  @override
  String toString() =>
      'BadgeModel(id: $id, name: $name, imageUrl: $imageUrl, colorRGB: $colorRGB)';

  @override
  bool operator ==(covariant BadgeModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.colorRGB == colorRGB;
  }

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ colorRGB.hashCode;

  Color get getColor {
    final color = '0xFF$colorRGB';
    return Color(int.parse(color));
  }
}
