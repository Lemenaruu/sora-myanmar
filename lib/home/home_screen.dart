import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sora_myanmar/home/accessories.dart';
import 'package:sora_myanmar/home/appbar_widget.dart';
import 'package:sora_myanmar/home/category_list.dart';
import 'package:sora_myanmar/home/most_popular_products_card.dart';
import 'package:sora_myanmar/home/title_and_showmore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                AppBarWidget(),
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
