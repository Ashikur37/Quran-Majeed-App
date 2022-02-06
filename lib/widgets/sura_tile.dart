import 'package:flutter/material.dart';
import 'package:quran/screens/sura_details.dart';

import '../models/sura.dart';

class SuraTile extends StatelessWidget {
  final Sura sura;
  const SuraTile({Key? key, required this.sura}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sura.suraNo),
          Text(sura.suraName),
          Text(sura.englishName),
          Text(sura.totalAyat),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuraDetails(sura: sura),
          ),
        );
      },
    );
  }
}
