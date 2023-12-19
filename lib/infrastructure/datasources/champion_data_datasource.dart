import 'package:dio/dio.dart';

import 'package:meeplol/domain/datasources/champion_datasource.dart';
import 'package:meeplol/domain/entites/champion/champion.dart';
import 'package:meeplol/infrastructure/mappers/champion_mapper.dart';
import 'package:meeplol/infrastructure/models/champion/champions_response.dart';

class ChampionDataDatasource extends ChampionDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://ddragon.leagueoflegends.com/cdn',
  ));

  @override
  Future<List<Champion>> getChampions(
      {String language = 'en_US', String version = '13.24.1'}) async {
    final response = await dio.get('/$version/data/$language/champion.json');

    final apiResponse = ChampionsResponse.fromJson(response.data);

    final List<Champion> champions = apiResponse.data.values
        .map((champion) => ChampionMapper.championRiotToEntity(champion))
        .toList();

    return champions;
  }
}
