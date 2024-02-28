import 'package:flutter/material.dart';

class TabBarSettings extends StatelessWidget {
  const TabBarSettings({super.key} );

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 30.0,
      height: 30,
      child: Tab(text: 'Здесь могла быть ваша реклама'),
    );
  }
}