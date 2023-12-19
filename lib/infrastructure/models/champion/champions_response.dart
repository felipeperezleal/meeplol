import 'champion_image_riot.dart';
import 'champion_info_riot.dart';

class ChampionsResponse {
  final Type type;
  final String format;
  final String version;
  final Map<String, ChampionRiot> data;

  ChampionsResponse({
    required this.type,
    required this.format,
    required this.version,
    required this.data,
  });

  factory ChampionsResponse.fromJson(Map<String, dynamic> json) =>
      ChampionsResponse(
        type: typeValues.map[json["type"]]!,
        format: json["format"],
        version: json["version"]!,
        data: Map.from(json["data"]).map((k, v) =>
            MapEntry<String, ChampionRiot>(k, ChampionRiot.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "format": format,
        "version": version,
        "data": Map.from(data)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class ChampionRiot {
  final String version;
  final String id;
  final String key;
  final String name;
  final String title;
  final String blurb;
  final ChampionInfoRiot info;
  final ChampionImageRiot image;
  final List<String> tags;
  final String partype;
  final Map<String, double> stats;

  ChampionRiot({
    required this.version,
    required this.id,
    required this.key,
    required this.name,
    required this.title,
    required this.blurb,
    required this.info,
    required this.image,
    required this.tags,
    required this.partype,
    required this.stats,
  });

  factory ChampionRiot.fromJson(Map<String, dynamic> json) => ChampionRiot(
        version: json["version"]!,
        id: json["id"],
        key: json["key"],
        name: json["name"],
        title: json["title"],
        blurb: json["blurb"],
        info: ChampionInfoRiot.fromJson(json["info"]),
        image: ChampionImageRiot.fromJson(json["image"]),
        tags: List<String>.from(json["tags"]),
        partype: json["partype"],
        stats: Map.from(json["stats"])
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "id": id,
        "key": key,
        "name": name,
        "title": title,
        "blurb": blurb,
        "info": info.toJson(),
        "image": image.toJson(),
        "tags": List<String>.from(tags),
        "partype": partype,
        "stats": Map.from(stats).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
