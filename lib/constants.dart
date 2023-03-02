import 'package:flutter/material.dart';

class AppColor {
  static const Color red = Color.fromARGB(255, 235, 24, 9);
}

// SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.7,
//                       height: 30,
//                       child: OutlinedButton(
//                         style: ButtonStyle(
//                           shape: MaterialStateProperty.all(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5.0),
//                             ),
//                           ),
//                           side: MaterialStateProperty.all(
//                             const BorderSide(
//                               color: AppColor.red,
//                             ),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           'Request a Tour',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: AppColor.red,
//                               fontSize: 12),
//                         ),
//                       ),
//                     ),

ButtonStyle buttonStyleWithBordersideColor = ButtonStyle(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  side: MaterialStateProperty.all(
    const BorderSide(
      color: AppColor.red,
    ),
  ),
);


ButtonStyle buttonStyleWithBackgroundColor = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(AppColor.red),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  // side: MaterialStateProperty.all(
  //   const BorderSide(
  //     color: AppColor.red,
  //   ),
  // ),
);
