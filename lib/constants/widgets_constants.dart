import 'package:flutter/material.dart';

class AppColor {
  static const Color red = Color.fromARGB(255, 235, 24, 9);
}

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

const TextStyle txtSmall = TextStyle(
  fontSize: 10,
  color: Colors.black,
);
const TextStyle txtMedium = TextStyle(
  fontSize: 12,
  color: Colors.black,
);
const TextStyle txtLarge = TextStyle(
  fontSize: 14,
  color: Colors.black,
);

class CheckBoxWidget extends StatelessWidget {
  CheckBoxWidget({
    super.key,
    required this.onChanged,
    required this.value,
  });
  final bool value;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Checkbox(
        fillColor: MaterialStateProperty.all(
          AppColor.red,
        ),
        side: const BorderSide(
          style: BorderStyle.solid,
          color: Colors.black,
          width: 3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}

class MyParallelogram extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    // paint.style = PaintingStyle.fill;
    paint.color = AppColor.red;
    //Path path = Path();

    // path.addPolygon(List Offset(points), bool close){

    // };
    // path.addRect(
    //   //   Rect.fromLTWH(
    //   //     20,
    //   //     3,
    //   //     50,
    //   //     30,
    //   //   ),
    //   Rect.fromPoints(
    //     Offset.zero,
    //     Offset(50, 30),
    //   ),
    // );

    final path = Path()
      ..lineTo(0.0, size.height / 2)
      ..lineTo(0, 32)
      ..lineTo(80, 32)
      ..lineTo(112, 32)
      ..lineTo(130.0, size.height / 2)
      // ..lineTo(size.width / 2, 0.0)
      // ..lineTo(0.0, size.height / 2)
      ..close();
    // parapath.moveTo(30.0, 38.0);

    // parapath.quadraticBezierTo(80, 5000, 80, 80);
//    parapath.

    // parapath.addRect(
    //   Rect.fromLTRB(70.0, 80.0, 20.0, 10),
    // );
    // parapath.addRRect(
    //   RRect.fromRectXY(Rect.fromLTRB(5, 80, 9, 50,)),
    // );
    //  p
    // paint.color = Colors.pink;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
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