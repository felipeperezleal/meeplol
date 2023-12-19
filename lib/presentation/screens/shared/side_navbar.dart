import 'package:flutter/material.dart';
import 'package:meeplol/presentation/screens/screens.dart';

class SidedNavbar extends StatefulWidget {
  const SidedNavbar({super.key});

  static int selectedNavbarIndex = 0;

  @override
  State<SidedNavbar> createState() => _SidedNavbarState();
}

class _SidedNavbarState extends State<SidedNavbar> {
  int _selectedIndex = SidedNavbar.selectedNavbarIndex;
  final List<Widget> screens = const [
    MainScreen(),
    TierlistScreen(),
    ChampionsScreen(),
    ItemsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      NavigationRail(
          labelType: NavigationRailLabelType.all,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.search_outlined),
              selectedIcon: Icon(Icons.search),
              label: Text('Search'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.auto_graph_outlined),
              selectedIcon: Icon(Icons.auto_graph),
              label: Text('Tier List'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.workspaces_outline),
              selectedIcon: Icon(Icons.workspaces),
              label: Text('Champions'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.article_outlined),
              selectedIcon: Icon(Icons.article),
              label: Text('Items'),
            ),
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
              SidedNavbar.selectedNavbarIndex = index;
            });
          },
          trailing: Expanded(
            child: Column(children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info_outline),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          )),
      const VerticalDivider(thickness: 1, width: 1),
      Expanded(
        child: screens[_selectedIndex],
      ),
    ]);
  }
}
