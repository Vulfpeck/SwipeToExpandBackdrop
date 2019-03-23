import 'package:flutter/material.dart';

import 'backdrop.dart';
import 'controller_menu.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;

  void _onTileTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackDrop(
      backLayer: BackdropMenu(
        selectedItem: _currentIndex,
        onTileTap: _onTileTap,
        itemCount: 3,
      ),
      frontLayer: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'This is body $_currentIndex',
              style: TextStyle(fontSize: 32.0),
            ),
          )),
      currentIndex: _currentIndex,
    );
  }
}
