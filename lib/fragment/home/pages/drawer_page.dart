// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

import '../../../providers/route_provider.dart';

Drawer drawer(BuildContext context, final GlobalKey<ScaffoldState> key) {
  // double height = mainAppBar(context, key).preferredSize.height;
  return Drawer(
    elevation: 0,
    child: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: const Text(
                      'May Myint Thu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.menu_rounded)),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myOrders);
                },
                title: const Text('My Orders'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myAddresses);
                },
                title: const Text('My Addresses'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(myPaymentMethods);
                },
                title: const Text('My Payment Methods'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(mySubscriptions);
                },
                title: const Text('My Subscriptions'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(pointHistory);
                },
                title: const Text('Point History'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(saved);
                },
                leading: const Text('Saved'),
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
                title: const Text('Setting'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(termsAndConditions);
                },
                title: const Text('Terms & Conditions'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              ListTile(
                onTap: () {
                  context.pushNamed(aboutUs);
                },
                title: const Text('About Us'),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: kBottomNavigationBarHeight, left: 15, right: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    style: buttonStyleWithBackgroundColor,
                    onPressed: () {},
                    child: const Text(
                      'Sign Out',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
