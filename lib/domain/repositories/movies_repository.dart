import 'package:meeplol/domain/entites/champion/champion.dart';

abstract class ChampionRepository {
  Future<List<Champion>> getChampions(
      {String language = 'en_US', String version = '13.24.1'});
}
