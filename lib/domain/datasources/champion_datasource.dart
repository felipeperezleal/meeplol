import 'package:meeplol/domain/entites/champion/champion.dart';

abstract class ChampionDatasource {
  Future<List<Champion>> getChampions(
      {String language = 'en_US', String version = '13.24.1'});
}
