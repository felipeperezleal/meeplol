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
        body: const SidedNavbar());
  }
}
