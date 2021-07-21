import 'package:flutter/material.dart';
// import 'package:yummy_meals/screen/category_meals_screen.dart';

class HomeItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final Color circleColor;
  const HomeItem(
    this.id,
    this.title,
    this.color,
    this.circleColor,
  );

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) {
    //     return CategoryMealsScreen(id, title);
    //   },
    // ));
    // Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,
    //     arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return selectCategory(context);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: circleColor,
              child: Icon(
                Icons.book_rounded,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
