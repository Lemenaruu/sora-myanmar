// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

import '../../../constants/string_constants.dart';
import '../../../providers/route_provider.dart';

Drawer drawer(BuildContext context, final GlobalKey<ScaffoldState> key) {
  // double height = mainAppBar(context, key).preferredSize.height;
  final size = MediaQuery.of(context).size;
  return Drawer(
    elevation: 4,
    
    width: size.width * 0.8,
    
    child: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.16,
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: const Text(
                      'May Myint Thu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: SvgPicture.asset(
                        SvgPic.menuLeft,
                        height: 28,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myOrders);
                },
                title: const Text(
                  'My Orders',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myAddresses);
                },
                title: const Text(
                  'My Addresses',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myPaymentMethods);
                },
                title: const Text(
                  'My Payment Methods',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(mySubscriptions);
                },
                title: const Text(
                  'My Subscriptions',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(pointHistory);
                },
                title: const Text(
                  'Point History',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(saved);
                },
                leading: const Text(
                  'Saved',
                  style: txtLarge,
                ),
                title: Row(
                  children: [
                    Container(
                      width: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: const Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(setting);
                },
                title: const Text(
                  'Setting',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(termsAndConditions);
                },
                title: const Text(
                  'Terms & Conditions',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(aboutUs);
                },
                title: const Text(
                  'About Us',
                  style: txtLarge,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: OutlinedButton(
                  style: buttonStyleWithBackgroundColor,
                  onPressed: () {
                    context.goNamed(signIn);
                  },
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: kBottomNavigationBarHeight + 10,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
