import 'package:flutter/material.dart';

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
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Show More',
            style: TextStyle(fontWeight: FontWeight.bold),
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
