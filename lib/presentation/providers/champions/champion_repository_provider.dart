import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meeplol/infrastructure/datasources/champion_data_datasource.dart';
import 'package:meeplol/infrastructure/repositories/champion_repository_impl.dart';

final championRepositoryProvider = Provider((ref) {
  return ChampionRepositoryImpl(ChampionDataDatasource());
});
