import 'package:collapsable_side_bar/animated_sidebar.dart';
import 'package:flutter/material.dart';

import 'collapsible_sidebar.dart';
import 'sidebarx.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _val = 0;

  List<Widget> sidebars = [
    const MySiderbarX(),
    const MyCollapsibleSideBar(),
    const MyAnimatedSidebar(),
    const Placeholder(),
  ];

  void _chageAppBar() {
    var listSize = sidebars.length;

    setState(() {
      _val++;

      if (_val > listSize - 1) {
        _val = 0;
      }
    });
  }
https://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@github.com/Priyantha-Kingslake/Flutter_sidebar_RnD.git
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar ui',
      home: Scaffold(
        body: sidebars[_val],
        floatingActionButton: FloatingActionButton(
          onPressed: _chageAppBar,
          child: const Icon(Icons.navigate_next_sharp),
        ),
      ),
    );
  }
}
