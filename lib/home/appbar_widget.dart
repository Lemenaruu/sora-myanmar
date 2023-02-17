import 'package:flutter/material.dart';

import 'package:sora_myanmar/home/screens/drawer_screen.dart';
import 'package:sora_myanmar/router.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  void openDrawer(BuildContext context) {
    context.go(const DrawerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  openDrawer(context);
                },
                icon: const Icon(Icons.menu)),
            const Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
      ],
    );
  }
}
