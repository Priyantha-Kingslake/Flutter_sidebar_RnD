import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import 'my_body.dart';

class MySiderbarX extends StatelessWidget {
  const MySiderbarX({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SidebarX(
          extendedTheme: const SidebarXTheme(
            width: 250,
          ),
          animationDuration: const Duration(milliseconds: 200),
          controller: SidebarXController(selectedIndex: 0),
          items: const [
            SidebarXItem(icon: Icons.home, label: 'Home'),
            SidebarXItem(icon: Icons.search, label: 'Search'),
            SidebarXItem(icon: Icons.settings, label: 'Settings'),
          ],
        ),
        // Your app screen body
        const MyBody(),
      ],
    );
  }
}
