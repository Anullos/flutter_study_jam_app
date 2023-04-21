import '../domain/models/badge_model.dart';
import '../domain/models/pokemon_lite_model.dart';
import '../presentation/config/app_icons.dart';

List<PokemonLiteModel> dataPokemonsLite = [
  PokemonLiteModel(
    id: '1',
    name: 'Bulbasaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
    types: [
      BadgeModel(
        id: '10',
        name: 'Grass',
        imageUrl: AppIcons.grass,
        colorRGB: '62B957',
      ),
      BadgeModel(
        id: '14',
        name: 'Poison',
        imageUrl: AppIcons.poison,
        colorRGB: 'A552CC',
      ),
    ],
  ),
  PokemonLiteModel(
    id: '2',
    name: 'Ivysaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
    types: [
      BadgeModel(
        id: '10',
        name: 'Grass',
        imageUrl: AppIcons.grass,
        colorRGB: '62B957',
      ),
      BadgeModel(
        id: '14',
        name: 'Poison',
        imageUrl: AppIcons.poison,
        colorRGB: 'A552CC',
      ),
    ],
  ),
  PokemonLiteModel(
    id: '3',
    name: 'Venusaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png',
    types: [
      BadgeModel(
        id: '10',
        name: 'Grass',
        imageUrl: AppIcons.grass,
        colorRGB: '62B957',
      ),
      BadgeModel(
        id: '14',
        name: 'Poison',
        imageUrl: AppIcons.poison,
        colorRGB: 'A552CC',
      ),
    ],
  ),
  PokemonLiteModel(
    id: '4',
    name: 'Charmander',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
    types: [
      BadgeModel(
        id: '9',
        name: 'Fire',
        imageUrl: AppIcons.fire,
        colorRGB: 'FD7D24',
      ),
    ],
  ),
  PokemonLiteModel(
    id: '5',
    name: 'Charmeleon',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png',
    types: [
      BadgeModel(
        id: '9',
        name: 'Fire',
        imageUrl: AppIcons.fire,
        colorRGB: 'FD7D24',
      ),
    ],
  ),
  PokemonLiteModel(
    id: '6',
    name: 'Charizard',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
    types: [
      BadgeModel(
        id: '9',
        name: 'Fire',
        imageUrl: AppIcons.fire,
        colorRGB: 'FD7D24',
      ),
      BadgeModel(
        id: '8',
        name: 'Flying',
        imageUrl: AppIcons.flying,
        colorRGB: '748FC9',
      ),
    ],
  ),
];
