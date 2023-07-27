import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

import 'my_body.dart';

class MyCollapsibleSideBar extends StatefulWidget {
  const MyCollapsibleSideBar({super.key});

  @override
  State createState() => _MyCollapsibleSideBarState();
}

class _MyCollapsibleSideBarState extends State<MyCollapsibleSideBar> {
  List<CollapsibleItem>? _items;
  String? _headline;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items!.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: () => setState(() => _headline = 'DashBoard'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Dashboard"))),
        subItems: [
          CollapsibleItem(
            text: 'Menu',
            icon: Icons.menu_book,
            onPressed: () => setState(() => _headline = 'Menu'),
            onHold: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Menu"))),
          ),
          CollapsibleItem(
            text: 'Shop',
            icon: Icons.ac_unit,
            onPressed: () => setState(() => _headline = 'Shop'),
            onHold: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Shop"))),
            subItems: [
              CollapsibleItem(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onPressed: () => setState(() => _headline = 'Cart'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Cart"))),
              )
            ],
          ),
        ],
      ),
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () => setState(() => _headline = 'Search'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Search"))),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Notifications',
        icon: Icons.notifications,
        onPressed: () => setState(() => _headline = 'Notifications'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Notifications"))),
      ),
      CollapsibleItem(
        text: 'Settings',
        icon: Icons.settings,
        onPressed: () => setState(() => _headline = 'Settings'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Settings"))),
      ),
      CollapsibleItem(
        text: 'Alarm',
        icon: Icons.access_alarm,
        onPressed: () => setState(() => _headline = 'Alarm'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Alarm"))),
      ),
      CollapsibleItem(
        text: 'Eco',
        icon: Icons.eco,
        onPressed: () => setState(() => _headline = 'Eco'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Eco"))),
      ),
      CollapsibleItem(
        text: 'Event',
        icon: Icons.event,
        onPressed: () => setState(() => _headline = 'Event'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Event"))),
      ),
      CollapsibleItem(
        text: 'No Icon',
        onPressed: () => setState(() => _headline = 'No Icon'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("No Icon"))),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CollapsibleSidebar(
      screenPadding: 0,
      iconSize: 25,
      borderRadius: 0,
      isCollapsed: MediaQuery.of(context).size.width <= 800,
      items: _items!,
      collapseOnBodyTap: false,
      title: _headline!,
      body: _body(size, context),
      backgroundColor: Colors.black,
      // selectedTextColor: Colors.limeAccent,
      textStyle: const TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
      ),
      titleStyle: const TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
      toggleTitleStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      sidebarBoxShadow: const [],
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey[50],
        child: const MyBody());
  }
}
