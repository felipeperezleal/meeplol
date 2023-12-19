import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meeplol/presentation/providers/providers.dart';

class ChampionsScreen extends ConsumerStatefulWidget {
  const ChampionsScreen({super.key});

  static const name = 'champions';

  @override
  ChampionsScreenState createState() => ChampionsScreenState();
}

class ChampionsScreenState extends ConsumerState<ChampionsScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(championsNotifierProvider.notifier).getChampionsList();
  }

  @override
  Widget build(BuildContext context) {
    final champions = ref.watch(championsNotifierProvider);
    return ListView.builder(
      itemCount: champions.length,
      itemBuilder: (context, index) {
        final champion = champions[index];
        return ListTile(
          title: Text(champion.name),
          subtitle: Text(champion.title),
        );
      },
    );
  }
}
