import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class ModelPokemon {
  String name;
  String url;

  ModelPokemon({
    required this.name,
    required this.url,
  });

  ModelPokemon copyWith({
    String? name,
    String? url,
  }) {
    return ModelPokemon(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toJson() => _$ModelPokemonToJson(this);

  factory ModelPokemon.fromJson(Map<String, dynamic> map) =>
      _$ModelPokemonFromJson(map);

  @override
  String toString() => 'ModelPokemon(name: $name, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModelPokemon && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
