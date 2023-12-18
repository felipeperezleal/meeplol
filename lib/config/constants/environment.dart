import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String riotAPIKey = dotenv.env['RIOT_API_KEY'] ?? 'No API Key';
}
