import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
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
    initialLocation: '/home',
    icon: SvgPicture.asset(
      "assets/svgs/home_outlined.svg",
      // color: AppColor.red,
    ),
    activeIcon: SvgPicture.asset(
      "assets/svgs/home.svg",
      color: AppColor.red,
    ),
    label: const Text(
      'Home',
      style: TextStyle(
        color: AppColor.red,
        fontSize: 12,
      ),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/blog',
    icon: SizedBox(
      height: 25,
      width: 24,
      child: SvgPicture.asset(
        "assets/svgs/compass_outlined1.svg",
        // color: AppColor.red,
        // fit: BoxFit.fitWidth,
      ),
    ),
    activeIcon: SvgPicture.asset(
      "assets/svgs/compass.svg",
      color: AppColor.red,
    ),
    label: const Text(
      'Blog',
      style: TextStyle(
        color: AppColor.red,
        fontSize: 12,
      ),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/cart',
    icon: SizedBox(
      height: 29,
      width: 28,
      child: SvgPicture.asset(
        "assets/svgs/basket_outlined.svg",
        // color: AppColor.red,
      ),
    ),
    activeIcon: SizedBox(
      height: 30,
      width: 33,
      child: SvgPicture.asset(
        "assets/svgs/basket.svg",
        color: AppColor.red,
      ),
    ),
    label: const Text(
      'Cart',
      style: TextStyle(
        color: AppColor.red,
        fontSize: 12,
      ),
    ),
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/profile',
    icon: SizedBox(
      height: 20,
      width: 20,
      child: SvgPicture.asset(
        "assets/svgs/user.svg",
        // fit: BoxFit.cover,
        // color: AppColor.red,
        // fit: BoxFit.fitHeight,
      ),
    ),
    activeIcon: SizedBox(
      height: 20,
      width: 20,
      child: SvgPicture.asset(
        "assets/svgs/user_outlined.svg",
        color: AppColor.red,
        // fit: BoxFit.cover,
      ),
    ),
    label: const Text(
      'Profile',
      style: TextStyle(
        color: AppColor.red,
        fontSize: 12,
      ),
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
      // appBar: AppBar(
      //   key: _key,
      // ),
      // backgroundColor: Colors.white,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: Colors.grey.shade100,
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
          bubbleFillStyle: BubbleFillStyle.fill,
          inkEffect: false,
          inkColor: Colors.white,
          // padding: const EdgeInsets.all(20),

          barStyle: BubbleBarStyle.vertical,

          opacity: 0.0,
          unselectedIconColor: Colors.black,
          // iconSize: 20,
        ),
        // hasNotch: true,
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
