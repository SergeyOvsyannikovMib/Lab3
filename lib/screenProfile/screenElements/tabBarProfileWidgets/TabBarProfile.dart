import 'package:flutter/material.dart';
import 'package:lab2_test/screenProfile/screenElements/tabBarProfileWidgets/InterestsWidget.dart';
import 'package:lab2_test/screenProfile/screenElements/tabBarProfileWidgets/SubscriptionsWidget.dart';
import 'package:lab2_test/screenProfile/screenElements/tabBarProfileWidgets/TariffWidget.dart';

class TabBarProfile extends StatelessWidget {
  const TabBarProfile({super.key} );

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 30, 0, 30),
      child: Column(
        children: [SubscriptionsWidget(), TariffWidget(), InterestsWidget()]
      )
    );
  }
}