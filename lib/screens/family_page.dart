import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_japaneese/models/category_data.dart';

import '../widgets/caontainer_list.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2D1200),
        foregroundColor: Colors.white,
        title: const Text('Family members'),
        //leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                color: const Color.fromARGB(255, 251, 248, 223),
                width: 80,
                //height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...family_12.map((e) {
                      return Image.asset(e.image, height: 80);
                    })
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  //width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...family_12.map(
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
