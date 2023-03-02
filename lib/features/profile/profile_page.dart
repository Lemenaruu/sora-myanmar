import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 25,
                              child: const Icon(
                                CupertinoIcons.person_fill,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'May Myint Thu',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '+959 763 092 392',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.go('/profile_setting');
                        },
                        icon: const Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'M-Points',
                            style: TextStyle(
                              // fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              const Text(
                                '520,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 25,
                                width: 25,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    'assets/images/piggy_bank_outlined.png',
                                    color: AppColor.red,
                                    fit: BoxFit.cover,
                                    // color: AppColor.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Earn more points by purchasing new items.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'poppin',
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Continue Buying',
                                      style: TextStyle(
                                        color: AppColor.red,
                                        fontFamily: 'poppin',
                                        decoration: TextDecoration.underline,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'My Order Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '#119977351',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: cor,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Column(
                          children: [
                            Checkbox(
                              fillColor: MaterialStateProperty.all(
                                AppColor.red,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Pending',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Column(
                          children: [
                            Checkbox(
                              fillColor: MaterialStateProperty.all(
                                AppColor.red,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Order Confirmed',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Column(
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black,
                                width: 3,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Packaging',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Column(
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black,
                                width: 3,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Delivery',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Column(
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black,
                                width: 3,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Complete',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const Text(
                    'See All Orders Status >',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Services',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // color: Colors.blue,
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 35,
                                    width: 35,
                                    child: const Icon(
                                      CupertinoIcons.briefcase,
                                      color: AppColor.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('Jobs'),
                                ],
                              ),
                            ),
                            SizedBox(
                              // color: Colors.blue,
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 35,
                                    width: 35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/house_rent.png',
                                        color: AppColor.red,
                                        fit: BoxFit.cover,
                                        // color: AppColor.red,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Center(
                                    child: Text(
                                      'House Rent',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 35,
                                    width: 35,
                                    child: const Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.signal,
                                        color: AppColor.red,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Center(
                                    child: Text(
                                      'Simcard and Wifi',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      // style: TextStyle(
                                      //   fontSize: 12,
                                      // ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.18,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 35,
                                    width: 35,
                                    child: const Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.mountain,
                                        color: AppColor.red,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Travel',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Promotions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        "https://1.bp.blogspot.com/-5-vUjJTM6EM/X4kg1YfXH0I/AAAAAAAASZQ/iWmUUAwFOQEc_yecWynfORJcOjjuQqqGQCLcBGAsYHQ/s700/01%2BRazer%2BPikachu%2BKeyboard%2BGaming%2BMouse%2BEarbuds%2BMousepad.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
