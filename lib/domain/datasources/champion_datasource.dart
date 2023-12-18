import 'package:meeplol/domain/entites/champion/champion.dart';

abstract class ChampionDatasource {
  Future<List<Champion>> getChampions();
}
