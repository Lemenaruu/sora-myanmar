import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants.dart';
import 'package:sora_myanmar/providers/bottom_navigation_provider.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class ScaffoldWithBottomNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithBottomNavBar({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  ConsumerState<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

final tabs = [
  ScaffoldWithNavBarTabItem(
    initialLocation: '/',
    icon: const Icon(CupertinoIcons.person),
    activeIcon: const FaIcon(
      FontAwesomeIcons.house,
      color: AppColor.red,
    ),
    label: const Text(
      'Home',
      style: TextStyle(
        color: AppColor.red,
      ),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/blog',
    icon: const FaIcon(FontAwesomeIcons.compass),
    activeIcon:
        const FaIcon(FontAwesomeIcons.solidCompass, color: AppColor.red),
    label: const Text(
      'Blog',
      style: TextStyle(
        color: AppColor.red,
      ),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/cart',
    icon: const Icon(CupertinoIcons.cart),
    activeIcon: const Icon(
      CupertinoIcons.cart_fill,
      color: AppColor.red,
    ),
    label: const Text(
      'Cart',
      style: TextStyle(color: AppColor.red),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/profile',
    icon: const Icon(CupertinoIcons.person),
    activeIcon: const Icon(CupertinoIcons.person_fill, color: AppColor.red),
    label: const Text(
      'Profile',
      style: TextStyle(color: AppColor.red),
    ),
  ),
];

class _ScaffoldWithBottomNavBarState
    extends ConsumerState<ScaffoldWithBottomNavBar> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    ref.read(bottomNavigationProvider.notifier).setPosition(tabIndex);

    var tab = tabs.elementAt(tabIndex);

    context.go(tab.initialLocation);
  }

  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var currentPosition = ref.watch(bottomNavigationProvider);

    return Scaffold(
      extendBody: true,
      key: _key,
      body: SafeArea(
        bottom: false,
        child: widget.child,
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: StylishBottomBar(
        elevation: 0,

        currentIndex: currentPosition,
        onTap: (index) => _onItemTapped(context, index),
        // currentIndex: currentPosition,
        // onTap: (index) {
        //   setState(() {
        //     currentPosition = index;
        //   });
        // },

        items: tabs,
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.vertical,

          opacity: 0.3,
          unselectedIconColor: Colors.black,
          // iconSize: 20,
        ),
        hasNotch: true,
        // backgroundColor: Colors.transparent,
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomBarItem {
  ScaffoldWithNavBarTabItem(
      {required this.initialLocation,
      required Widget icon,
      required Widget activeIcon,
      Widget? label})
      : super(
          icon: icon,
          title: label,
          selectedIcon: activeIcon,
        );

  final String initialLocation;
}





