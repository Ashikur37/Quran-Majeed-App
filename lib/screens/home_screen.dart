import 'package:flutter/material.dart';
import 'package:quran/Utils.dart';
import 'package:quran/const.dart';
import 'package:quran/models/sura.dart';
import 'package:quran/widgets/sura_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Sura>>(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Quran'),
            ),
            body: snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return SuraTile(
                        sura: snapshot.data![index],
                      );
                    },
                  )
                : snapshot.hasError
                    ? Text(snapshot.error.toString())
                    : const Center(child: CircularProgressIndicator()),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      future: Utils().getJson(suraPath),
    );
  }
}
