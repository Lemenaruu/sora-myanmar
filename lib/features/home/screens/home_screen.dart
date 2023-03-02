import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/features/home/accessories.dart';
import 'package:sora_myanmar/features/home/category_list.dart';
import 'package:sora_myanmar/features/home/most_popular_products_card.dart';
import 'package:sora_myanmar/features/home/screens/drawer_screen.dart';
import 'package:sora_myanmar/features/home/title_and_showmore.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                // _scaffoldKey.currentState?.openDrawer();
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          }),
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined)),
            IconButton(
              onPressed: () {
                context.pushNamed(favourite);
              },
              icon: const Icon(Icons.favorite_outline),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        drawer: DrawerPage(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 35,
                  child: CategoryList(),
                ),
                SizedBox(
                  height: 5,
                ),
                TitleAndShowMore(
                  title: 'Most Popular Products',
                ),
                SizedBox(
                  height: 5,
                ),
                MostPopularProductsCard(),
                SizedBox(
                  height: 5,
                ),
                TitleAndShowMore(
                  title: 'Accessories You Might Like',
                ),
                SizedBox(
                  height: 5,
                ),
                Accessories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
