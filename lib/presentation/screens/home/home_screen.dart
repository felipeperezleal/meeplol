import 'package:flutter/material.dart';
import 'package:meeplol/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home';

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: const CustomAppbar(),
      backgroundColor: colors.background,
      body: Row(children: [
        const SidedNavbar(),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Image.asset('assets/icons/icon.png')),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Spacer(flex: 1),
                  Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide.none,
                        ),
                        hintText:
                            'Search a summoner, champion or whatever you want',
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              const Spacer(),
              const Divider(thickness: 1),
              const Row(
                children: [
                  Spacer(flex: 1),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'MeepLoL isn’t endorsed by Riot Games and doesn’t reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc. © 2023 MeepLoL',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ]),
    );
  }
}
