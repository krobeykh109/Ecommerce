import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  static const routeName = 'drawer-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 300,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  'History',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text('Already'),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
