import 'package:flutter/material.dart';
import 'package:tasky/views/home/widgets/fab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// FAB
      floatingActionButton: const Fab(),

      /// Body
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
