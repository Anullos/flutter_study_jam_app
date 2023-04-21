import '../domain/models/generation_model.dart';
import '../presentation/config/app_images.dart';

List<GenerationModel> dataGenerations = [
  GenerationModel(
    id: '1',
    name: 'Generation I',
    pokemonSpecies: [
      AppImages.bulbasaur,
      AppImages.charmander,
      AppImages.squirtle,
    ],
  ),
  GenerationModel(
    id: '2',
    name: 'Generation II',
    pokemonSpecies: [
      AppImages.chikorita,
      AppImages.cyndaquil,
      AppImages.totodile,
    ],
  ),
  GenerationModel(
    id: '3',
    name: 'Generation III',
    pokemonSpecies: [
      AppImages.treecko,
      AppImages.torchic,
      AppImages.mudkip,
    ],
  ),
  GenerationModel(
    id: '4',
    name: 'Generation IV',
    pokemonSpecies: [
      AppImages.turtwig,
      AppImages.chimchar,
      AppImages.piplup,
    ],
  ),
  GenerationModel(
    id: '5',
    name: 'Generation V',
    pokemonSpecies: [
      AppImages.snivy,
      AppImages.tepig,
      AppImages.oshawott,
    ],
  ),
  GenerationModel(
    id: '6',
    name: 'Generation VI',
    pokemonSpecies: [
      AppImages.chespin,
      AppImages.fennekin,
      AppImages.froakie,
    ],
  ),
  GenerationModel(
    id: '7',
    name: 'Generation VII',
    pokemonSpecies: [
      AppImages.rowlet,
      AppImages.litten,
      AppImages.popplio,
    ],
  ),
  GenerationModel(
    id: '8',
    name: 'Generation VIII',
    pokemonSpecies: [
      AppImages.grookey,
      AppImages.scorbunny,
      AppImages.sobble,
    ],
  ),
];
