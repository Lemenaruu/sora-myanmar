import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/auth/pages/sign_in_sign_up_page.dart';
import 'package:sora_myanmar/fragment/blog/pages/blog_homewifi_details_page.dart';
import 'package:sora_myanmar/fragment/blog/pages/blog_jobs_page.dart';
import 'package:sora_myanmar/fragment/blog/pages/blog_page.dart';
import 'package:sora_myanmar/fragment/cart/shopping_cart_page.dart';
import 'package:sora_myanmar/fragment/home/pages/home_page.dart';
import 'package:sora_myanmar/fragment/home/pages/product_detail_page.dart';
import 'package:sora_myanmar/fragment/profile/profile_setting_page.dart';
import 'package:sora_myanmar/providers/auth_provider.dart';
import 'package:sora_myanmar/side_menu/my_subscriptions_page.dart';
import 'package:sora_myanmar/side_menu/setting_page.dart';
import 'package:sora_myanmar/side_menu/terms_conditions_page.dart';

import '../auth/pages/otp_page.dart';
import '../auth/pages/sign_in_page.dart';
import '../auth/pages/sign_up_page.dart';
import '../constants/scaffold_with_bottom_navigationbar.dart';
import '../fragment/blog/pages/blog_home_rent_page.dart';
import '../fragment/profile/profile_page.dart';
import '../side_menu/about_us_page.dart';
import '../side_menu/my_addresses_page.dart';
import '../side_menu/my_orders_page.dart';
import '../side_menu/my_payment_methods_page.dart';
import '../side_menu/point_history_page.dart';
import '../side_menu/saved_page.dart';
import '../ui/card_information_page.dart';
import '../ui/choose_payment_page.dart';
import '../ui/favourite/favourite_page.dart';
import '../ui/filter_blog_houserent_page.dart';
import '../ui/filter_home_page.dart';
import '../ui/home_wifi_request_form/home_wifi_request_form1_page.dart';
import '../ui/home_wifi_request_form/home_wifi_request_form2_page.dart';
import '../ui/notification_page.dart';
import '../ui/order/order_completed_page.dart';
import '../ui/order/order_failed_page.dart';
import '../ui/order/order_details_page.dart';
import '../ui/rent_form/rent_form1_page.dart';
import '../ui/rent_form/rent_form2_page.dart';
import '../ui/rent_form/rent_form3_page.dart';
import '../ui/request_a_tour_eachday_page.dart';
import '../ui/shipping_and_payment/shipping_and_payment_page.dart';
import '../ui/shipping_and_payment/shipping_and_payment_with_data_page.dart';


const home = 'home';
const profileSetting = 'profile_setting';
const blog = 'blog';
const cart = 'cart';
const profile = 'profile';
const productDetail = 'product_detail';
const blogJobs = 'blog_jobs';


const blogHomeRent = 'blog_home_rent';
const blogHomeWifiDetail = 'blog_home_wifi_detail';
const favourite = 'favourite';
const otp = 'otp';
const orderFailed = 'order_failed';
const orderCompleted = 'order_completed';
const notification = 'notification';


const choosePayment = 'choose_payment';
const myAddresses = 'my_addresses';
const myOrders = 'my_orders';
const myPaymentMethods = 'my_payment_methods';
const cardInfomation = 'card_information';
const filterHome = 'filter_home';
const filterBlogHouseRent = 'filter_blog_house_rent';
const termsAndConditions = 'terms_and_conditions';


const setting = 'setting';
const saved = 'saved';
const pointHistory = 'point_history';
const mySubscriptions = 'my_subscriptions';


const rentForm1 = 'rent_form1';
const rentForm2 = 'rent_form2';
const rentForm3 = 'rent_form3';


const homeWifiRequestForm1 = 'home_wifi_request_form1';
const homeWifiRequestForm2 = 'home_wifi_request_form2';


const requestATourEachday = 'request_a_tour_eachday';


const shippingAndPaymentWithData = 'shipping_and_payment_with_data';
const shippingAndPayment = 'shipping_and_payment';
const orderDetails = 'order_details';
const aboutUs = 'about_us';


const signIn = 'sign_in';
const signUp = 'sign_up';
const signInSignUp = 'sign_in_sign_up';



final routerProvider = Provider<GoRouter>((ref) {
  var token = ref.watch(tokenProvider);

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
            redirect: (context, state) {
              if (token == null) {
                return '/sign_in';
              }
              return null;
            },
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfilePage(),
            ),
          ),
      
        ],
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: profileSetting,
        path: "/profile_setting",
      
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProfileSettingPage(),

          
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: productDetail,
        path: "/product_detail",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProductDetailPage(
              // productId: int.parse(state.params['productId'] as String),
              ),
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
        name: blogHomeRent,
        path: "/blog_home_rent",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BlogHomeRentPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: blogHomeWifiDetail,
        path: "/blog_home_wifi_detail",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BlogHomewifiDetailsPage(),
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
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: otp,
        path: "/otp",
        pageBuilder: (context, state) => NoTransitionPage(
          child: OtpPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: orderFailed,
        path: "/order_failed",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OrderFailedPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: orderCompleted,
        path: "/order_completed",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OrderCompletedPage(),
        ),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: notification,
        path: "/notification",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: NotificationPage(),
        ),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: myAddresses,
        path: "/my_addresses",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MyAddressesPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: myOrders,
        path: "/my_orders",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MyOrdersPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: myPaymentMethods,
        path: "/my_payment_methods",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MyPaymentMethodsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: cardInfomation,
        path: "/card_information",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: CardInformationPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: filterHome,
        path: "/filter_home",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: FilterHomePage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: filterBlogHouseRent,
        path: "/filter_blog_house_rent",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: FilterBlogHouseRentPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: termsAndConditions,
        path: "/terms_and_conditions",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: TermsAndConditionsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: setting,
        path: "/setting",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SettingPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: saved,
        path: "/saved",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SavedPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: pointHistory,
        path: "/point_history",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: PointHistoryPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: mySubscriptions,
        path: "/my_subscriptions",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MySubscriptionsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: rentForm1,
        path: "/rent_form1",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: RentForm1Page(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: rentForm2,
        path: "/rent_form2",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: RentForm2Page(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: rentForm3,
        path: "/rent_form3",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: RentForm3Page(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: homeWifiRequestForm1,
        path: "/home_wifi_request_form1",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeWifiRequestForm1Page(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: homeWifiRequestForm2,
        path: "/home_wifi_request_form2",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeWifiRequestForm2Page(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: requestATourEachday,
        path: "/request_a_tour_eachday",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: RequestATourEachdayPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: shippingAndPaymentWithData,
        path: "/shipping_and_payment_with_data",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ShippingAndPaymentWithDataPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: shippingAndPayment,
        path: "/shipping_and_payment",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ShippingAndPaymentPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: orderDetails,
        path: "/order_details",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OrderDetailsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: aboutUs,
        path: "/about_us",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AboutUsPage(),
        ),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: signInSignUp,
        path: "/sign_in_sign_up",
      
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignInSignUpPage(),
        ),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: signIn,
        path: "/sign_in",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignInPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: signUp,
        path: "/sign_up",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignUpPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: choosePayment,
        path: "/choose_payment",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ChoosePaymentMethodPage(),
        ),
      ),
    ],
  );
});
