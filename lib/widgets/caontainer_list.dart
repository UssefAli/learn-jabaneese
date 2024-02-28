import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers(
      {super.key,
      required this.japan,
      required this.english,
      required this.ontap,
      this.height});
  final String japan;
  final String english;
  final double? height;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      // width: 500,
      height: height ?? 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                japan,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                english,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: ontap,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
