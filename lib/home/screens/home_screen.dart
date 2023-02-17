import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sora_myanmar/home/accessories.dart';
import 'package:sora_myanmar/home/category_list.dart';
import 'package:sora_myanmar/home/most_popular_products_card.dart';
import 'package:sora_myanmar/home/screens/drawer_screen.dart';
import 'package:sora_myanmar/home/title_and_showmore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        drawer: const DrawerScreen(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                CategoryList(),
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
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.location_pin),
              label: 'Blog',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
            ),

            // bottomNavigationBar: BottomNavigationBar(items: const [
            //   BottomNavigationBarItem(
            //     icon: Icon(Icons.home),
            //     label: 'Home',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Icon(CupertinoIcons.heart_circle_fill),
            //     label: 'Blog',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Icon(CupertinoIcons.cart),
            //     label: 'Cart',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Icon(CupertinoIcons.person),
            //     label: 'Profile',
            //   ),
            // ]),
            //     label: 'Home',)
            //
          ],
        ),
      ),
    );
  }
}
