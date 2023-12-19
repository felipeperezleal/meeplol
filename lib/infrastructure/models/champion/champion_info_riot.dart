import 'package:meeplol/domain/entites/entities.dart';

class ChampionInfoRiot {
  final int attack;
  final int defense;
  final int magic;
  final int difficulty;

  ChampionInfoRiot({
    required this.attack,
    required this.defense,
    required this.magic,
    required this.difficulty,
  });

  factory ChampionInfoRiot.fromJson(Map<String, dynamic> json) =>
      ChampionInfoRiot(
        attack: json["attack"],
        defense: json["defense"],
        magic: json["magic"],
        difficulty: json["difficulty"],
      );

  Map<String, dynamic> toJson() => {
        "attack": attack,
        "defense": defense,
        "magic": magic,
        "difficulty": difficulty,
      };

  ChampionInfo toChampionInfo() {
    return ChampionInfo(
      attack: attack,
      defense: defense,
      magic: magic,
      difficulty: difficulty,
    );
  }
}
