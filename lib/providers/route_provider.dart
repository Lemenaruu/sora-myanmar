import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/features/blog/pages/blog_page.dart';
import 'package:sora_myanmar/features/cart/pages/shopping_cart_page.dart';
import 'package:sora_myanmar/features/home/screens/home_screen.dart';
import 'package:sora_myanmar/features/profile/profile_screen.dart';

import '../scaffold_with_bottom_navigationbar.dart';

const home = 'home';
const blog = 'blog';
const cart = 'cart';
const profile = 'profile';
// const WISHLIST = 'wishlist';
// const PRODUCT = 'product';
// const LOGIN = 'login';
// const REGISTER = 'register';
// const OTP = 'otp';

// const CHECKOUT = 'checkout';

final routerProvider = Provider<GoRouter>((ref) {
  // var token = ref.watch(tokenProvider);

  // private navigators
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final shellNavigatorKey = GlobalKey<NavigatorState>();

  return GoRouter(
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (context, state, child) {
          // a widget used to build the UI shell around the child widget
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          GoRoute(
            name: home,
            path: '/home',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomePage()),
          ),
          GoRoute(
            name: blog,
            path: '/blog',
            pageBuilder: (context, state) => NoTransitionPage(
              child: BlogPage(),
            ),
          ),

          
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            name: cart,
            path: '/cart',
            // redirect: (context, state) {
            //   if (token == null) {
            //     return '/login';
            //   }
            //   return null;
            // },
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ShoppingCartPage(),
            ),
          ),
          GoRoute(
            name: profile,
            path: '/profile',
            // redirect: (context, state) {
            //   if (token == null) {
            //     return '/login';
            //   }
            //   return null;
            // },
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfilePage(),
            ),
          ),
          // GoRoute(
          //   name: WISHLIST,
          //   path: "/wishlist",
          //   redirect: (context, state) {
          //     if (token == null) {
          //       return '/login';
          //     }
          //     return null;
          //   },
          //   pageBuilder: (context, state) => const NoTransitionPage(
          //     child: WishlistFragment(),
          //   ),
          // ),
        ],
      ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: PRODUCT,
      //   path: "/product/:productId",
      //   pageBuilder: (context, state) => NoTransitionPage(
      //     child: ProductDetailsScreen(
      //       productId: int.parse(state.params['productId'] as String),
      //     ),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: LOGIN,
      //   path: "/login",
      //   redirect: (context, state) {
      //     if (token != null) {
      //       return '/';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: LoginScreen(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: REGISTER,
      //   path: "/register",
      //   redirect: (context, state) {
      //     if (token != null) {
      //       return '/';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: RegisterScreen(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: OTP,
      //   path: "/otp",
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: OtpScreen(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: CART,
      //   path: "/cart",
      //   redirect: (context, state) {
      //     if (token == null) {
      //       return '/login';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: CartScreenNew(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: CHECKOUT,
      //   path: "/checkout",
      //   redirect: (context, state) {
      //     if (token == null) {
      //       return '/login';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: CheckoutScreen(),
      //   ),
      // ),
    ],
  );
});
