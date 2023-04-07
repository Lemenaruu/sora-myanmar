import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/string_constants.dart';
import 'package:sora_myanmar/fragment/profile/widgets/order_status_level_widget.dart';
import 'package:sora_myanmar/fragment/profile/widgets/services_widget.dart';

import '../../constants/widgets_constants.dart';
import '../../providers/route_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(profileSetting);
                        },
                        child: SvgPicture.asset(
                          SvgPic.settings,
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'M-Points',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '520,000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 25,
                        width: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            SvgPic.piggyBank,
                            color: AppColor.red,
                            fit: BoxFit.cover,
                            // color: AppColor.red,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Earn more points by purchasing new items.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                ),
                              ),
                              TextSpan(
                                text: ' Continue Buying',
                                style: TextStyle(
                                  color: AppColor.red,
                                  fontFamily: 'poppin',
                                  decoration: TextDecoration.underline,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const OrderStatusLevelWidget(),
                  const Divider(),
                  Text(
                    'See All Orders Status >',
                    style: txtMedium.copyWith(
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
              color: Colors.grey.shade50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    const ServicesWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Promotions',
                      style: txtMedium.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        "https://sora-mart.com/storage/info/636f840674926_photo.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: kBottomNavigationBarHeight,
            ),
          ],
        ),
      ),
    );
  }
}
