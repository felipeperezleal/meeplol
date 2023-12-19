import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meeplol/domain/entites/entities.dart';

import 'champion_repository_provider.dart';

final championsNotifierProvider =
    StateNotifierProvider<ChampionsNotifier, List<Champion>>((ref) {
  final getChampions = ref.watch(championRepositoryProvider).getChampions;
  return ChampionsNotifier(getChampions: getChampions);
});

typedef ChampionCallback = Future<List<Champion>> Function(
    {String language, String version});

class ChampionsNotifier extends StateNotifier<List<Champion>> {
  ChampionCallback getChampions;

  ChampionsNotifier({
    required this.getChampions,
  }) : super([]);

  Future<void> getChampionsList(
      {String language = 'en_US', String version = '13.24.1'}) async {
    state = await getChampions(language: language, version: version);
  }
}
