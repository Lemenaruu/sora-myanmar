import 'package:flutter/material.dart';

class MostPopularProductsCard extends StatelessWidget {
  const MostPopularProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10)),
                  width: 170,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  '- 30%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            // const Icon(
                            //   CupertinoIcons.heart_circle_fill,
                            //   color: Colors.amber,
                            //   size: 30,
                            // ),

                            const CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.amber,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/phone.png',
                          width: 70,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Oppo Reno6 4GB',
                ),
                const Text(
                  'MMK 540,000',
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
