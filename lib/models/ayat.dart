class Ayat {
  final String ayaNo;

  final String text;

  Ayat({
    required this.ayaNo,
    required this.text,
  });

  factory Ayat.fromJson(Map<String, dynamic> json) {
    return Ayat(
      ayaNo: json['aya'] as String,
      text: json['text'] as String,
    );
  }
}

// {"id":"1","sura":"1","aya":"1","text":"শুরু করছি আল্লাহর নামে যিনি পরম করুণাময়, অতি দয়ালু।"}