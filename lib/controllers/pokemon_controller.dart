import 'package:get/get.dart';
import 'package:pokemongo/models/pokemon_model.dart';

class PokemonController extends GetxController {
  final pokemon = <ModelPokemon>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPokemon();
  }

  void getPokemon() async {
    var data = [
      ModelPokemon(name: "PIKACHU", url: "acd"),
      ModelPokemon(name: "ENKA", url: "ac222d"),
      ModelPokemon(name: "CHARIZARD", url: "ac22d"),
      ModelPokemon(name: "RAICHU", url: "ac2d")
    ];

    pokemon.assignAll(data);
  }
}
