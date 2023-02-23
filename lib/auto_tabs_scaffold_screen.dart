import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sora_myanmar/constants.dart';
import 'package:sora_myanmar/router.gr.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class AutoTabsScaffoldScreen extends StatefulWidget {
  const AutoTabsScaffoldScreen({
    super.key,
  });

  @override
  State<AutoTabsScaffoldScreen> createState() => _AutoTabsScaffoldScreenState();
}

class _AutoTabsScaffoldScreenState extends State<AutoTabsScaffoldScreen> {
  // get appBarBuilder => null;

  // final start = context.tabsRouter.isRouteActive('HomeRoute');

  @override
  Widget build(BuildContext context) {
    // final start = context.tabsRouter.isRouteActive('HomeRoute');
    return AutoTabsScaffold(
      //   appBarBuilder: (context, tabsRouter) {
      //   return
      // context.tabsRouter.isRouteActive('HomeRoute')?

      //        AppBar(
      //           backgroundColor: Colors.white,
      //           elevation: 0,
      //           foregroundColor: Colors.black,
      //           leading: Builder(builder: (context) {
      //             return IconButton(
      //               onPressed: () {
      //                 // _scaffoldKey.currentState?.openDrawer();
      //                 Scaffold.of(context).openDrawer();
      //               },
      //               icon: const Icon(Icons.menu),
      //             );
      //           }),
      //           title: const Text(
      //             'Home',
      //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //           ),
      //           actions: [
      //             IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.notifications_none_outlined)),
      //             IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.favorite_outline)),
      //             IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      //           ],
      //         );

      // },

      // drawer: const DrawerPage(),
      // extendBody: ,

      // builder: (context, child, animation) {

      //   final tabsRouter = AutoTabsRouter.of(
      //       context); // <--- configure the AutoTabsRouter parameter
      //   return Scaffold(
      //     appBar: context.tabsRouter.isRouteActive('HomeRoute')
      //         ? AppBar(
      //             backgroundColor: Colors.white,
      //             elevation: 0,
      //             foregroundColor: Colors.black,
      //             leading: Builder(builder: (context) {
      //               return IconButton(
      //                 onPressed: () {
      //                   // _scaffoldKey.currentState?.openDrawer();
      //                   Scaffold.of(context).openDrawer();
      //                 },
      //                 icon: const Icon(Icons.menu),
      //               );
      //             }),
      //             title: const Text(
      //               'Home',
      //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //             ),
      //             actions: [
      //               IconButton(
      //                   onPressed: () {},
      //                   icon: const Icon(Icons.notifications_none_outlined)),
      //               IconButton(
      //                   onPressed: () {},
      //                   icon: const Icon(Icons.favorite_outline)),
      //               IconButton(
      //                   onPressed: () {}, icon: const Icon(Icons.search)),
      //             ],
      //           )
      //         : AppBar(
      //             backgroundColor: Colors.white,
      //           ),
      //     bottomNavigationBar: SalomonBottomBar(
      //       // itemShape:  ,

      //       curve: Curves.ease,
      //       itemShape: const StadiumBorder(side: BorderSide.none),

      //       onTap: tabsRouter.setActiveIndex,
      //       currentIndex: tabsRouter.activeIndex,
      //       items: [
      //         SalomonBottomBarItem(
      //           selectedColor: Colors.red,
      //           activeIcon: const Icon(Icons.home),
      //           title: const Text('Home'),
      //           icon: const Icon(Icons.home_outlined),
      //         ),
      //         SalomonBottomBarItem(
      //           selectedColor: Colors.red,
      //           activeIcon: const Icon(CupertinoIcons.compass_fill),
      //           title: const Text('Blog'),
      //           icon: const Icon(CupertinoIcons.compass),
      //         ),
      //         SalomonBottomBarItem(
      //           selectedColor: Colors.red,
      //           activeIcon: const Icon(CupertinoIcons.cart_fill),
      //           title: const Text('Cart'),
      //           icon: const Icon(CupertinoIcons.cart),
      //         ),
      //         SalomonBottomBarItem(
      //           selectedColor: Colors.red,
      //           activeIcon: const Icon(CupertinoIcons.person_fill),
      //           title: const Text('Profile'),
      //           icon: const Icon(CupertinoIcons.person),
      //         ),
      //       ],
      //     ),
      //   );
      // },

// context.tabsRouter.isRouteActive('HomeRoute')?

      routes: const [
        HomeRoute(),
        BlogRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      // bottomNavigationBuilder: (_, tabsRouter) {
      //   return SalomonBottomBar(
      //     // itemShape:  ,

      //     curve: Curves.ease,
      //     itemShape: const StadiumBorder(side: BorderSide.none),

      //     onTap: tabsRouter.setActiveIndex,

      //     currentIndex: tabsRouter.activeIndex,
      //     items: [
      //       SalomonBottomBarItem(

      //         selectedColor: Colors.red,
      //         activeIcon: const Icon(Icons.home),
      //         title: const Text('Home'),
      //         icon: const Icon(Icons.home_outlined),
      //       ),
      //       SalomonBottomBarItem(
      //         selectedColor: Colors.red,
      //         activeIcon: const Icon(CupertinoIcons.compass_fill),
      //         title: const Text('Blog'),
      //         icon: const Icon(CupertinoIcons.compass),
      //       ),
      //       SalomonBottomBarItem(
      //         selectedColor: Colors.red,
      //         activeIcon: const Icon(CupertinoIcons.cart_fill),
      //         title: const Text('Cart'),
      //         icon: const Icon(CupertinoIcons.cart),
      //       ),
      //       SalomonBottomBarItem(
      //         selectedColor: Colors.red,
      //         activeIcon: const Icon(CupertinoIcons.person_fill),
      //         title: const Text('Profile'),
      //         icon: const Icon(CupertinoIcons.person),
      //       ),
      //     ],
      //   );
      // },
      bottomNavigationBuilder: (context, tabsRouter) {
        return StylishBottomBar(
          currentIndex: tabsRouter.activeIndex,
          elevation: 0,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomBarItem(
              backgroundColor: Colors.white,
              // selectedColor: Colors.red,
              selectedIcon: const FaIcon(
                FontAwesomeIcons.house,
                color: AppColor.red,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: AppColor.red,
                ),
              ),
              icon: const Icon(CupertinoIcons.person),
            ),
            BottomBarItem(
              backgroundColor: Colors.white,
              // selectedcolor: AppColor.red
              selectedIcon: const FaIcon(FontAwesomeIcons.solidCompass,
                  color: AppColor.red),
              title: const Text(
                'Blog',
                style: TextStyle(
                  color: AppColor.red,
                ),
              ),
              icon: const FaIcon(FontAwesomeIcons.compass),
            ),
            BottomBarItem(
              backgroundColor: Colors.white,
              // selectedColor: Colors.red,
              selectedIcon:
                  const Icon(CupertinoIcons.cart_fill, color: AppColor.red),
              title: const Text(
                'Cart',
                style: TextStyle(color: AppColor.red),
              ),
              icon: const Icon(CupertinoIcons.cart),
            ),
            BottomBarItem(
              backgroundColor: Colors.white,
              // selectedColor: Colors.green,
              selectedIcon:
                  const Icon(CupertinoIcons.person_fill, color: AppColor.red),
              title: const Text(
                'Profile',
                style: TextStyle(color: AppColor.red),
              ),
              icon: const Icon(CupertinoIcons.person),
            ),
          ],
          option: BubbleBarOptions(
            barStyle: BubbleBarStyle.vertical,
            // barStyle: BubbleBarStyle.vertical,
            // bubbleFillStyle: BubbleFillStyle.fill,
            // bubbleFillStyle: BubbleFillStyle.outlined,

            opacity: 0.3,
            unselectedIconColor: Colors.black,
            // iconSize: 20,
          ),
          hasNotch: true,
          // backgroundColor: Colors.transparent,
        );
      },
    );
  }
}
