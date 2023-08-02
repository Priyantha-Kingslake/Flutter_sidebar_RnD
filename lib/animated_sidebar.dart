import 'package:collapsable_side_bar/my_body.dart';
import 'package:flutter/material.dart';
import 'package:animated_sidebar/animated_sidebar.dart';

class MyAnimatedSidebar extends StatefulWidget {
  const MyAnimatedSidebar({super.key});

  @override
  State<MyAnimatedSidebar> createState() => _MyAnimatedSidebarState();
}

class _MyAnimatedSidebarState extends State<MyAnimatedSidebar> {
  int activeTab = 0;

  final List<SidebarItem> items = [
    SidebarItem(
      icon: Icons.home,
      text: 'Home',
    ),
    SidebarItem(
      icon: Icons.notifications,
      text: 'Notifications',
    ),
    SidebarItem(
      icon: Icons.person,
      text: 'Management',
      children: [
        SidebarChildItem(
          icon: Icons.person,
          text: 'Users',
        ),
        SidebarChildItem(
          icon: Icons.verified_user,
          text: 'Roles',
        ),
        SidebarChildItem(
          icon: Icons.key,
          text: 'Permissions',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.abc,
      text: 'Integrations',
    ),
    SidebarItem(
      icon: Icons.settings,
      text: 'Settings',
    ),
    SidebarItem(
      icon: Icons.home,
      text: 'Home',
    ),
    SidebarItem(
      icon: Icons.notifications,
      text: 'Notifications',
    ),
    SidebarItem(
      icon: Icons.person,
      text: 'Management',
      children: [
        SidebarChildItem(
          icon: Icons.person,
          text: 'Users',
        ),
        SidebarChildItem(
          icon: Icons.verified_user,
          text: 'Roles',
        ),
        SidebarChildItem(
          icon: Icons.key,
          text: 'Permissions',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.abc,
      text: 'Integrations',
    ),
    SidebarItem(
      icon: Icons.settings,
      text: 'Settings',
    ),
    SidebarItem(
      icon: Icons.home,
      text: 'Home',
    ),
    SidebarItem(
      icon: Icons.notifications,
      text: 'Notifications',
    ),
    SidebarItem(
      icon: Icons.person,
      text: 'Management',
      children: [
        SidebarChildItem(
          icon: Icons.person,
          text: 'Users',
        ),
        SidebarChildItem(
          icon: Icons.verified_user,
          text: 'Roles',
        ),
        SidebarChildItem(
          icon: Icons.key,
          text: 'Permissions',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.abc,
      text: 'Integrations',
    ),
    SidebarItem(
      icon: Icons.settings,
      text: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedSidebar(
          margin: EdgeInsets.zero,
          expanded: MediaQuery.of(context).size.width > 600,
          items: items,
          // use this to set the active tab if you want to control it from outside
          // combined with autoSelectedIndex set to false
          // if you don't set autoSelectedIndex to false, the widget will
          // automatically set the active tab and selected item is used only
          // to set the initial value
          selectedIndex: activeTab,
          autoSelectedIndex: false,
          onItemSelected: (index) => setState(() => activeTab = index),
          duration: const Duration(milliseconds: 1000),
          frameDecoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                Color.fromRGBO(66, 66, 74, 1),
                Color.fromRGBO(25, 25, 25, 1),
              ],
            ),
            borderRadius: BorderRadius.zero,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(66, 66, 66, 0.75),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
          ),
          minSize: 90,
          maxSize: 250,
          itemIconSize: 26,
          itemIconColor: Colors.white,
          itemHoverColor: Colors.grey.withOpacity(0.3),
          itemSelectedColor: Colors.grey.withOpacity(0.3),
          itemTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          itemSelectedBorder: const BorderRadius.all(
            Radius.circular(5),
          ),
          itemMargin: 16,
          itemSpaceBetween: 10,
          headerIcon: Icons.ac_unit_sharp,
          headerIconSize: 30,
          headerIconColor: Colors.amberAccent,
          headerTextStyle: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
          headerText: ' Example',
        ),
        const Expanded(child: MyBody()),
      ],
    );
  }
}
