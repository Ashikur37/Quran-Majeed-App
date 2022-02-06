import 'package:flutter/material.dart';
import 'package:quran/Utils.dart';

import '../const.dart';
import '../models/sura.dart';

class SuraDetails extends StatefulWidget {
  final Sura sura;
  const SuraDetails({Key? key, required this.sura}) : super(key: key);

  @override
  _SuraDetailsState createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Future initState() async {
    // TODO: implement initState
    super.initState();
    await Utils().getSura(widget.sura.suraNo, enPath);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
