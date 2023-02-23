// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'auto_tabs_scaffold_screen.dart' as _i1;
import 'features/blog/pages/blog_page.dart' as _i3;
import 'features/cart/cart_screen.dart' as _i4;
import 'features/home/screens/home_screen.dart' as _i2;
import 'features/product_detail/product_detail_screen.dart' as _i6;
import 'features/profile/profile_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AutoTabsScaffoldScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AutoTabsScaffoldScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    BlogRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.BlogPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProductDetailPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AutoTabsScaffoldScreen.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: AutoTabsScaffoldScreen.name,
              children: [
                _i7.RouteConfig(
                  ProductDetailRoute.name,
                  path: 'product-detail',
                  parent: HomeRoute.name,
                )
              ],
            ),
            _i7.RouteConfig(
              BlogRoute.name,
              path: 'blog',
              parent: AutoTabsScaffoldScreen.name,
            ),
            _i7.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: AutoTabsScaffoldScreen.name,
            ),
            _i7.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: AutoTabsScaffoldScreen.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AutoTabsScaffoldScreen]
class AutoTabsScaffoldScreen extends _i7.PageRouteInfo<void> {
  const AutoTabsScaffoldScreen({List<_i7.PageRouteInfo>? children})
      : super(
          AutoTabsScaffoldScreen.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AutoTabsScaffoldScreen';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.BlogPage]
class BlogRoute extends _i7.PageRouteInfo<void> {
  const BlogRoute()
      : super(
          BlogRoute.name,
          path: 'blog',
        );

  static const String name = 'BlogRoute';
}

/// generated route for
/// [_i4.CartPage]
class CartRoute extends _i7.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: 'cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.ProductDetailPage]
class ProductDetailRoute extends _i7.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: 'product-detail',
        );

  static const String name = 'ProductDetailRoute';
}
