import 'package:flutter/material.dart';
import 'package:moeys_ui/screens/drawer_screen.dart';
import '../screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoEYS',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // primaryColor: Color(0xFF0E90E1),
        accentColor: Colors.indigo[300],
      ),
      home: TabsScreen(),
      routes: {
        DrawerScreen.routeName: (ctx) => DrawerScreen(),
      },
    );
  }
}
