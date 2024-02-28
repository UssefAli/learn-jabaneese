import 'package:flutter/material.dart';
import 'package:learn_japaneese/widgets/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 18, 0),
        foregroundColor: Colors.white,
        title: const Text('Toku'),
      ),
      backgroundColor: const Color.fromARGB(255, 251, 248, 223),
      body: const CategoryList(),
    );
  }
}
