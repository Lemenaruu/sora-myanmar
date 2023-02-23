// import 'package:flutter/material.dart';
// import 'package:sora_myanmar/router.gr.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final appRouter = AppRouter();
//     return MaterialApp.router(
//       //   builder: (context, child) => AnimatedSplashScreen(splash: Center(
//       //   child: Padding(
//       //     padding: const EdgeInsets.all(10.0),
//       //     child: Column(
//       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       children: [
//       //         Column(
//       //           children: const [
//       //             SizedBox(
//       //               height: 30,
//       //             ),
//       //             CircleAvatar(
//       //               backgroundColor: Colors.amber,
//       //               radius: 50,
//       //             ),
//       //             SizedBox(
//       //               height: 50,
//       //             ),
//       //             Text(
//       //               'SHOPPING AND SERVICES',
//       //               style: TextStyle(fontSize: 16),
//       //             ),
//       //           ],
//       //         ),
//       //         Column(
//       //           mainAxisAlignment: MainAxisAlignment.center,
//       //           children: const [
//       //             Text(
//       //               'Version 1.0',
//       //               style: TextStyle(
//       //                 color: Colors.grey,
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ), nextScreen: AutoTabsScaffoldScreen()),
//       title: 'Sora Myanmar',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'poppin',
//       ),
//       routeInformationParser: appRouter.defaultRouteParser(),
//       routerDelegate: appRouter.delegate(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sora_myanmar/features/blog/pages/blog_homewifi_details_page.dart';
import 'package:sora_myanmar/router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp(
      //   builder: (context, child) => AnimatedSplashScreen(splash: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Column(
      //           children: const [
      //             SizedBox(
      //               height: 30,
      //             ),
      //             CircleAvatar(
      //               backgroundColor: Colors.amber,
      //               radius: 50,
      //             ),
      //             SizedBox(
      //               height: 50,
      //             ),
      //             Text(
      //               'SHOPPING AND SERVICES',
      //               style: TextStyle(fontSize: 16),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Text(
      //               'Version 1.0',
      //               style: TextStyle(
      //                 color: Colors.grey,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ), nextScreen: AutoTabsScaffoldScreen()),
      title: 'Sora Myanmar',

      home: const BlogHomewifiDetailsPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        fontFamily: 'poppin',
      ),
    );
  }
}
