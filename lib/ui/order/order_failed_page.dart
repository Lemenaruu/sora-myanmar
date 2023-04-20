import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';

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
            icon: SvgPicture.asset(
              SvgPic.closeX,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 246, 221, 215),
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromARGB(36, 241, 58, 68),
                  child: CircleAvatar(
                    backgroundColor: AppColor.red,
                    radius: 40,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        SvgPic.exclamationMark,
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Your order #119977351 was Failed. You can ",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      // decoration: TextDecoration.underline,
                      color: Colors.black,

                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: " Live Chat",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      decoration: TextDecoration.underline,
                      color: AppColor.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " and report a problem",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      // decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
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
            SizedBox(height: kBottomNavigationBarHeight,),
            
          ],
        ),
      ),
    );
  }
}
