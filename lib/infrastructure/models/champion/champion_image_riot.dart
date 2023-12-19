import 'package:meeplol/domain/entites/entities.dart';

class ChampionImageRiot {
  final String full;
  final Sprite sprite;
  final Type group;
  final int x;
  final int y;
  final int w;
  final int h;

  ChampionImageRiot({
    required this.full,
    required this.sprite,
    required this.group,
    required this.x,
    required this.y,
    required this.w,
    required this.h,
  });

  factory ChampionImageRiot.fromJson(Map<String, dynamic> json) =>
      ChampionImageRiot(
        full: json["full"],
        sprite: spriteValues.map[json["sprite"]]!,
        group: typeValues.map[json["group"]]!,
        x: json["x"],
        y: json["y"],
        w: json["w"],
        h: json["h"],
      );

  Map<String, dynamic> toJson() => {
        "full": full,
        "sprite": spriteValues.reverse[sprite],
        "group": typeValues.reverse[group],
        "x": x,
        "y": y,
        "w": w,
        "h": h,
      };

  ChampionImage toChampionImage() {
    return ChampionImage(
      full: full,
      sprite: sprite.toString(),
      group: group.toString(),
      x: x,
      y: y,
      w: w,
      h: h,
    );
  }
}

enum Type { CHAMPION }

final typeValues = EnumValues({"champion": Type.CHAMPION});

enum Sprite {
  CHAMPION0_PNG,
  CHAMPION1_PNG,
  CHAMPION2_PNG,
  CHAMPION3_PNG,
  CHAMPION4_PNG,
  CHAMPION5_PNG
}

final spriteValues = EnumValues({
  "champion0.png": Sprite.CHAMPION0_PNG,
  "champion1.png": Sprite.CHAMPION1_PNG,
  "champion2.png": Sprite.CHAMPION2_PNG,
  "champion3.png": Sprite.CHAMPION3_PNG,
  "champion4.png": Sprite.CHAMPION4_PNG,
  "champion5.png": Sprite.CHAMPION5_PNG
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
