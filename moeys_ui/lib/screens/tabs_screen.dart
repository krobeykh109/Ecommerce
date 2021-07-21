import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moeys_ui/screens/drawer_screen.dart';
import 'package:moeys_ui/screens/library_screen.dart';
import 'package:moeys_ui/screens/news_screen.dart';
import 'package:moeys_ui/screens/test_screen.dart';

import 'home_screen.dart';
// import '../screen/favorite_screen.dart';
// import '../widget/main_drawer.dart';

// class TabsScreen extends StatefulWidget {
//   const TabsScreen({Key? key}) : super(key: key);

//   @override
//   _TabsScreenState createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       // initialIndex: 1, // Show Tab index....................
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('YummyMeals'),
//           centerTitle: true,
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.category_outlined),
//                 text: 'Categories',
//               ),
//               Tab(
//                 icon: Icon(Icons.favorite_border_outlined),
//                 text: 'Favorite',
//               )
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavoriteScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class TabsScreen extends StatefulWidget {
  // final List<Meal> favoriteMeals;
  // const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;
  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': 'Home',
      },
      {
        'page': LibraryScreen(),
        'title': 'Library',
      },
      {
        'page': TestScreen(),
        'title': 'Test',
      },
      {
        'page': NewsScreen(),
        'title': 'News',
      }
    ];
    super.initState();
  }

  int _selectIndexPage = 0;
  void _selectPage(int index) {
    setState(() {
      _selectIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(DrawerScreen.routeName);
          },
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 20,
            color: Colors.white,
          ),
        ),
        title: _selectIndexPage == 0
            ? Row(
                children: [
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      'assets/icons/person.svg',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Rotha')
                ],
              )
            : Text(_pages[_selectIndexPage]['title']),
        centerTitle: _selectIndexPage == 0 ? false : true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Success.svg',
              color: Colors.white,
              height: 18,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: _pages[_selectIndexPage]['page'],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(0, 0),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            onTap: _selectPage,
            currentIndex: _selectIndexPage,
            unselectedItemColor: Theme.of(context).accentColor,
            showUnselectedLabels: true,
            selectedItemColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text('Library'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                title: Text('Test'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                title: Text('News'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
