import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/features/blog/pages/blog_homewifi_details_page.dart';
import 'package:sora_myanmar/features/blog/pages/blog_jobs_page.dart';
import 'package:sora_myanmar/features/blog/pages/blog_page.dart';
import 'package:sora_myanmar/features/cart/pages/shopping_cart_page.dart';
import 'package:sora_myanmar/features/favourite/favourite_page.dart';
import 'package:sora_myanmar/features/home/screens/home_screen.dart';
import 'package:sora_myanmar/features/product_detail/product_detail_screen.dart';
import 'package:sora_myanmar/features/profile/profile_setting_page.dart';

import '../features/blog/pages/blog_home_rent_page.dart';
import '../features/profile/profile_page.dart';
import '../scaffold_with_bottom_navigationbar.dart';

const home = 'home';
const profileSetting = 'profile_setting';
const blog = 'blog';
const cart = 'cart';
const profile = 'profile';
const productDetail = 'product_detail';
const blogJobs = 'blog_jobs';
const blogHomewifi = 'blog_homewifi';
const blogHomeRent = '/blog_home_rent';
const favourite = 'favourite';

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
    initialLocation: '/home',
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
            parentNavigatorKey: shellNavigatorKey,
            name: home,
            path: '/home',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomePage()),
          ),
          GoRoute(
            name: blog,
            path: '/blog',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: BlogPage(),
            ),
          ),

          GoRoute(
            parentNavigatorKey: shellNavigatorKey,
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
            parentNavigatorKey: shellNavigatorKey,
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
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: profileSetting,
        path: "/profile_setting",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProfileSettingPage(),
          //  ProductDetailsScreen(
          //   productId: int.parse(state.params['productId'] as String),
          // ),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: productDetail,
        path: "/product_detail",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProductDetailPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: blogJobs,
        path: "/blog_jobs",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BlogJobsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: blogHomewifi,
        path: "/blog_homewifi",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BlogHomewifiDetailsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: blogHomeRent,
        path: "/blog_home_rent",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BlogHomeRentPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: favourite,
        path: "/favourite",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: FavouritesPage(),
        ),
      ),
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
