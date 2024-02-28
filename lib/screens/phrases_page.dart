import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_japaneese/widgets/caontainer_list.dart';
import '../models/category_data.dart';

class PhrasesPage extends StatefulWidget {
  const PhrasesPage({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2D1200),
        foregroundColor: Colors.white,
        title: const Text('Pharses'),
        //leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    //width: double.infinity,
                    color: const Color.fromARGB(255, 22, 148, 164),
                    child: Column(
                      children: [
                        ...phrases_12.map((e) {
                          return Containers(
                            japan: e.japan,
                            english: e.eng,
                            ontap: () {
                              player.play(
                                AssetSource(e.sound),
                              );
                            },
                          );
                        }).toList(),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
