import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran/models/sura.dart';

import 'models/ayat.dart';

class Utils {
  List<Sura> parseSuras(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Sura>((json) => Sura.fromJson(json)).toList();
  }

  Future<List<Sura>> getJson(String pathUrl) async {
    var str = await rootBundle.loadString(pathUrl);

    return parseSuras(str);
  }

  List<Ayat> parseAyats(var responseBody) {
    final parsed = responseBody.cast<Map<String, dynamic>>();

    return parsed.map<Ayat>((json) => Ayat.fromJson(json)).toList();
  }

  Future<List<Ayat>> getSura(String suraNo, String pathUrl) async {
    var str = await rootBundle.loadString(pathUrl);
    var json = jsonDecode(str);

    return parseAyats(json.where((item) => item['sura'] == suraNo));
  }
}
