import 'package:day2/modals/catlog.dart';
import 'package:flutter/material.dart';

class HomeDetailPage extends StatelessWidget {
   const HomeDetailPage({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(item.image),
          Text(item.name),
          Text(item.desc)
        ],
      ),
    );
  }
}
