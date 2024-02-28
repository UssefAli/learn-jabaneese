import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_japaneese/models/category_data.dart';

import '../widgets/caontainer_list.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2D1200),
        foregroundColor: Colors.white,
        title: const Text('Colors'),
        //leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                color: const Color.fromARGB(255, 251, 248, 223),
                width: 80,
                //height: 950,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...colors_12.map(
                        (e) {
                          return Image.asset(e.image, height: 95);
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.deepPurple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...colors_12.map(
                        (e) {
                          return Containers(
                            japan: e.japan,
                            english: e.eng,
                            ontap: () {
                              player.play(AssetSource(e.sound));
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
