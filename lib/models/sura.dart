class Sura {
  final String suraNo;
  final String suraName;
  final String para;
  final String totalAyat;
  final String englishName;

  Sura(
      {required this.suraNo,
      required this.suraName,
      required this.para,
      required this.totalAyat,
      required this.englishName});

  factory Sura.fromJson(Map<String, dynamic> json) {
    return Sura(
      suraNo: json['sura_no'] as String,
      suraName: json['sura_name'] as String,
      para: json['para'] as String,
      totalAyat: json['total_ayat'] as String,
      englishName: json['eng_name'] as String,
    );
  }
}

// {"sura_no":"3","sura_name":"আল ইমরান","para":"3","total_ayat":"200","eng_name":"Al-i'Imran"}