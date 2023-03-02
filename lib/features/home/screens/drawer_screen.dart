import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key});
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        key: rootNavigatorKey,
        elevation: 0,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.menu_rounded)),
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('My Orders'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('My Addresses'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('My Payment Methods'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('My Subscriptions'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Point History'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
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
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Setting'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Terms & Conditions'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text('About Us'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shadowColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(4.0)),
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          50,
                        ), //////// HERE
                      ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
