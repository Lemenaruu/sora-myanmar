import 'package:flutter/material.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: txtMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // color: Colors.amberAccent,
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package at your doorstep!',
                              style: txtMedium.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Delivery - Peter',
                              style: txtMedium.copyWith(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'We have left a package at your doorstep ,pleases check it out!',
                              style: txtMedium.copyWith(
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // width: MediaQuery.of(context).size.width * 0.25,
                        // height: MediaQuery.of(context).size.height * 0.13,
                        color: Colors.grey.shade100,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/box.png",
                            fit: BoxFit.none,
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Thu, 30 Dec, 2022",
                  style: txtMedium,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
