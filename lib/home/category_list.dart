import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const NewCategory(
            color: Colors.red,
            text: 'Phone/Computer',
            textColor: Colors.white,
          ),
          NewCategory(
            color: Colors.pink.shade100,
            text: 'Food',
            textColor: Colors.red,
          ),
          NewCategory(
            color: Colors.pink.shade100,
            text: 'Electronic',
            textColor: Colors.red,
          ),
          NewCategory(
            color: Colors.pink.shade100,
            text: 'Others',
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

class NewCategory extends StatelessWidget {
  const NewCategory({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      // child: Container(
      //   decoration: BoxDecoration(

      //     color: color,
      //     borderRadius: BorderRadius.circular(30),
      //   ),

      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          // padding: MaterialStateProperty.all(
          //     const EdgeInsets.symmetric(vertical: 1)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w800,
          ),
        ),
        //   ),
      ),
    );
  }
}
