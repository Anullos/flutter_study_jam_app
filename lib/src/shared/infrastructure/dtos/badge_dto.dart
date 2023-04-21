import 'dart:convert';

import '../../domain/models/badge_model.dart';

class BadgeDto {
  final String id;
  final String name;
  final String imageUrl;
  final String colorRGB;
  BadgeDto({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.colorRGB,
  });
  BadgeDto._({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.colorRGB,
  });

  static BadgeDto fromDomain(BadgeModel domain) {
    return BadgeDto._(
      id: domain.id,
      name: domain.name,
      imageUrl: domain.imageUrl,
      colorRGB: domain.colorRGB,
    );
  }

  BadgeModel toDomain() {
    return BadgeModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      colorRGB: colorRGB,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'colorRGB': colorRGB,
    };
  }

  factory BadgeDto.fromMap(Map<String, dynamic> map) {
    return BadgeDto(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      colorRGB: map['colorRGB'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BadgeDto.fromJson(String source) =>
      BadgeDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
