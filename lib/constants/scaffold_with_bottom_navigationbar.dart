import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/providers/bottom_navigation_provider.dart';

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
    icon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/home_outlined.svg",
        height: 22,
        // color: AppColor.red,
      ),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/home.svg",
        color: AppColor.red,
        height: 22,
      ),
    ),
    label: 'Home',
    backgroundColor: null,
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/blog',
    icon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/compass_outlined1.svg",
        height: 22,
        // color: AppColor.red,
        // fit: BoxFit.fitWidth,
      ),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/compass.svg",
        color: AppColor.red,
        height: 22,
      ),
    ),
    label: 'Blog',
    backgroundColor: null,
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/cart',
    icon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/cart.svg",
        // color: AppColor.red,
        height: 23,
      ),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/cart_filled.svg",
        color: AppColor.red,
        height: 23,
      ),
    ),
    label: 'Cart',
    backgroundColor: null,
  ),
  ScaffoldWithNavBarTabItem(
    initialLocation: '/profile',
    icon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/user.svg",
        height: 20,
        // fit: BoxFit.cover,
        // color: AppColor.red,
        // fit: BoxFit.fitHeight,
      ),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset(
        "assets/svgs/user_filled.svg",
        color: AppColor.red,
        height: 20,
        // fit: BoxFit.cover,
      ),
    ),
    label: 'Profile',
    backgroundColor: null,
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade100,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 1,
        // fixedColor: AppColor.red,

        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.red,
        unselectedItemColor: Colors.black,

        selectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),

        currentIndex: currentPosition,
        onTap: (index) => _onItemTapped(context, index),

        items: tabs,
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  ScaffoldWithNavBarTabItem(
      {required this.initialLocation,
      required Widget icon,
      required Widget activeIcon,
      required Color? backgroundColor,
      String? label})
      : super(
          icon: icon,
          activeIcon: activeIcon,
          backgroundColor: backgroundColor,
          label: label,
        );

  final String initialLocation;
}
