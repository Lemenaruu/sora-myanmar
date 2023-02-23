import 'package:auto_route/auto_route.dart';
import 'package:sora_myanmar/auto_tabs_scaffold_screen.dart';
import 'package:sora_myanmar/features/blog/pages/blog_page.dart';
import 'package:sora_myanmar/features/cart/cart_screen.dart';
import 'package:sora_myanmar/features/product_detail/product_detail_screen.dart';
import 'package:sora_myanmar/features/home/screens/home_screen.dart';
import 'package:sora_myanmar/features/profile/profile_screen.dart';
import 'package:sora_myanmar/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  
  routes: [
    //  AutoRoute(
    //   path: "/login",
    //   page: LoginWrapperPage, // we'll get to this LoginWrapperPage next
    //   children: [
    //     AutoRoute(page: EmailPage),
    //     AutoRoute(page: PasswordPage),
    //   ]
    // ),
    
    AutoRoute(path: '/', page: AutoTabsScaffoldScreen, children: [
      AutoRoute(path: 'home', page: HomePage, name: 'HomeRoute', children: [
        AutoRoute(
          path: 'product-detail',
          page: ProductDetailPage,
        )
      ]),
      AutoRoute(
        path: 'blog',
        page: BlogPage,
        name: 'BlogRoute',
      ),
      AutoRoute(
        path: 'cart',
        page: CartPage,
        name: 'CartRoute',
      ),
      AutoRoute(
        path: 'profile',
        page: ProfilePage,
        name: 'ProfileRoute',
      ),
    ]),
  ],
)
class $AppRouter {}
