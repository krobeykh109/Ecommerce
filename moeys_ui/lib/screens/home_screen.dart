import 'package:flutter/material.dart';
import '../data/moeys_data.dart';
import '../widgets/home_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 160,
          childAspectRatio: 0.98,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          ...MoEYS_CATEGORIES.map((e) => HomeItem(
                e.id,
                e.title,
                e.color,
                e.circleColor,
              )).toList(),
        ],
      ),
    );
  }
}
