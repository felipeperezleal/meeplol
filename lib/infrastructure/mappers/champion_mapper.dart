import 'package:meeplol/domain/entites/champion/champion.dart';
import 'package:meeplol/infrastructure/models/champion/champions_response.dart';

class ChampionMapper {
  static Champion championRiotToEntity(ChampionRiot champion) => Champion(
      version: champion.version,
      id: champion.id,
      key: champion.key,
      name: champion.name,
      title: champion.title,
      blurb: champion.blurb,
      info: champion.info.toChampionInfo(),
      image: champion.image.toChampionImage(),
      tags: champion.tags,
      partype: champion.partype,
      stats: champion.stats);
}
