import 'package:flutter/material.dart';

import '../../constants/widgets_constants.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/close.png",
              height: 16,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 246, 221, 215),
                    radius: 70,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: const Color.fromARGB(36, 241, 58, 68),
                      child: CircleAvatar(
                        backgroundColor: AppColor.red,
                        radius: 50,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/images/exclamation.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Order Failed!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Your order #119977351 was Failed. You can ",
                        style: TextStyle(
                          fontFamily: 'poppin',
                          // decoration: TextDecoration.underline,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " Live Chat",
                        style: TextStyle(
                          fontFamily: 'poppin',
                          decoration: TextDecoration.underline,
                          color: AppColor.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " and report a problem",
                        style: TextStyle(
                          fontFamily: 'poppin',
                          // decoration: TextDecoration.underline,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                OutlinedButton(
                  style: buttonStyleWithBackgroundColor,
                  onPressed: () {},
                  child: const Text(
                    'BACK TO HOME',
                    style: TextStyle(
                      color: Colors.white,
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
}
