import 'package:flutter/material.dart';

class SidedNavbar extends StatefulWidget {
  const SidedNavbar({super.key});

  @override
  State<SidedNavbar> createState() => _SidedNavbarState();
}

class _SidedNavbarState extends State<SidedNavbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
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
        ));
  }
}
