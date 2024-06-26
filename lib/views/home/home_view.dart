import 'package:flutter/material.dart';

import 'package:tasky/views/home/widgets/fab.dart';
import 'package:tasky/views/home/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,

      /// FAB
      floatingActionButton: const Fab(),

      /// Body
      body: HomeViewBody(textTheme: textTheme),
    );
  }
}
