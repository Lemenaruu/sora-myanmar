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

ButtonStyle buttonStyleWithBordersideColor = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  ),
  side: const BorderSide(
    color: AppColor.red,
  ),
  minimumSize: const Size(double.infinity, 50),
);

ButtonStyle buttonStyleWithBackgroundColor = ElevatedButton.styleFrom(
  backgroundColor: AppColor.red,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  ),
  minimumSize: const Size(double.infinity, 50),
);

InputDecoration inputDecoration = const InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      width: 2,
      color: AppColor.red,
    ),
  ),
  hintStyle: txtMedium,
);

const TextStyle txtMedium = TextStyle(
  fontSize: 12,
  color: Colors.black,
);
