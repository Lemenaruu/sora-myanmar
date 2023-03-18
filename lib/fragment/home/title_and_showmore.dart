import 'package:flutter/material.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class TitleAndShowMore extends StatelessWidget {
  const TitleAndShowMore({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Show More',
            style: txtMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        // GestureDetector(
        //   child: const Text(
        //     'Show More',
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
      ],
    );
  }
}
