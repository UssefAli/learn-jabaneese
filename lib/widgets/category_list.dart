import 'package:flutter/material.dart';
import 'package:learn_japaneese/widgets/category.dart';
import 'package:learn_japaneese/screens/colors_page.dart';
import 'package:learn_japaneese/screens/family_page.dart';
import 'package:learn_japaneese/screens/numbers_page.dart';
import 'package:learn_japaneese/screens/phrases_page.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Category(
          color: Colors.orange,
          text: 'Numbers',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NumberPage();
            }));
          },
        ),
        Category(
          color: const Color.fromARGB(255, 46, 106, 48),
          text: 'Family members',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Family();
            }));
          },
        ),
        Category(
          color: Colors.deepPurple,
          text: 'Colors',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ColorsPage();
            }));
          },
        ),
        Category(
          color: const Color.fromARGB(255, 22, 148, 164),
          text: 'Phrases',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PhrasesPage();
            }));
          },
        ),
      ],
    );
  }
}
