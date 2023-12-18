import 'package:meeplol/domain/entites/champion/champion.dart';

abstract class ChampionRepository {
  Future<List<Champion>> getChampions();
}
