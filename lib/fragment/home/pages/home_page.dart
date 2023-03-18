// import 'package:go_router/go_router.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/fragment/home/accessories.dart';
import 'package:sora_myanmar/fragment/home/category_list.dart';
import 'package:sora_myanmar/fragment/home/most_popular_products_card.dart';
import 'package:sora_myanmar/fragment/home/pages/drawer_page.dart';
import 'package:sora_myanmar/fragment/home/title_and_showmore.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _key = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              // _scaffoldKey.currentState?.openDrawer();
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu_outlined),
          );
        }),
        title: const Text(
          'Home',
        ),
        actions: [
          IconButton(
            onPressed: () {
              // context.go("/otp");
              context.pushNamed(signUp);
            },
            icon: const Icon(
              CupertinoIcons.bell,
            ),
          ),
          IconButton(
            onPressed: () {
              context.pushNamed(favourite);
            },
            icon: const Icon(
              CupertinoIcons.heart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10))
        ],
      ),

      drawer: drawer(context, _key),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 35,
                width: double.infinity,
                child: CategoryList(),
              ),
              SizedBox(
                height: 10,
              ),
              TitleAndShowMore(
                title: 'Most Popular Products',
              ),
              SizedBox(
                height: 5,
              ),
              MostPopularProductsCard(),
              SizedBox(
                height: 5,
              ),
              TitleAndShowMore(
                title: 'Accessories You Might Like',
              ),
              SizedBox(
                height: 5,
              ),
              Accessories(),
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: DraggableFab(
        initPosition: Offset(MediaQuery.of(context).size.width, 600),

        // securityBottom: ,
        child: SizedBox(
          width: 50,
          height: 40,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: AppColor.red,
            onPressed: () {},
            child: const Icon(
              Icons.message_rounded,
              // size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
