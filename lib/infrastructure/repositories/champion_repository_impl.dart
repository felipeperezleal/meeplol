import 'package:meeplol/domain/datasources/champion_datasource.dart';
import 'package:meeplol/domain/entites/champion/champion.dart';
import 'package:meeplol/domain/repositories/movies_repository.dart';

class ChampionRepositoryImpl extends ChampionRepository {
  final ChampionDatasource datasource;

  ChampionRepositoryImpl(this.datasource);

  @override
  Future<List<Champion>> getChampions(
      {String language = 'en_US', String version = '13.24.1'}) {
    return datasource.getChampions(language: language, version: version);
  }
}
