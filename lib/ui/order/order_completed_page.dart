import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';

import '../../constants/widgets_constants.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

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
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 238, 211),
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(246, 246, 229, 204),
                  child: CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 40,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Order Completed !',
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
                    text: "Your order #119977351 has been placed. You can ",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "see the status of the order at any time.",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      fontSize: 12,
                      color: Colors.black,
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
                'SEE ORDER INFO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              style: buttonStyleWithBordersideColor,
              onPressed: () {},
              child: const Text(
                'BACK TO HOME',
                style: TextStyle(
                  color: AppColor.red,
                  fontWeight: FontWeight.bold,
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
