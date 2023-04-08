import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/string_constants.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class AboutUsPage extends ConsumerStatefulWidget {
  const AboutUsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends ConsumerState<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Theme(
        data: ThemeData(
          fontFamily: 'poppin',
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        child: Scaffold(
          body: Column(
            children: [
              Container(
                color: Colors.indigo.shade500,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  SvgPic.menuRight,
                                  color: Colors.white,
                                  height: 28,
                                ),
                                onPressed: () {
                                  context.pop();
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Sora Myanmar'),
                            ],
                          ),
                          Row(
                            children: const [
                              Badge(
                                largeSize: 14,
                                backgroundColor: AppColor.red,
                                label: Text('0'),
                                textStyle: txtMedium,
                                child: Icon(CupertinoIcons.heart),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Badge(
                                largeSize: 14,
                                backgroundColor: AppColor.red,
                                label: Text('0'),
                                textStyle: txtMedium,
                                child: Icon(CupertinoIcons.cart),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Badge(
                                largeSize: 14,
                                backgroundColor: AppColor.red,
                                label: Text('0'),
                                textStyle: txtMedium,
                                child: Icon(CupertinoIcons.bell),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'WHAT IS SORA MYANMAR?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet,consectetur adipiscing elit.Nam eget convallis nibh,eu facilisis sem. Suspendisse molestie ligula massa, nec condimentum purus bibendum id. Integer in efficitur massa, pharetra porttitor augu. Mauris',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.bag,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Products'),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '7,500+',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: const Divider(
                                  thickness: 5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.person,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Active Users'),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '650+',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: const Divider(
                                  thickness: 5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Why should you choose us?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/delivery-fast.svg",
                      color: AppColor.red,
                      fit: BoxFit.contain,
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
