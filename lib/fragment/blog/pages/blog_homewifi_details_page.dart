import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/widgets_constants.dart';

class BlogHomewifiDetailsPage extends StatelessWidget {
  const BlogHomewifiDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://sora-mart.com/storage/info/636f84b97b7e2_photo.jpg",
                        height: 25.0,
                        width: 25.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Xfinity',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.heart,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '200',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outlined,
                        color: AppColor.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Performance Pro Internet',
                        style: TextStyle(
                          // fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Internet download speed',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'poppin',
                                      // /*overflow: TextOverflow.ellipsis*
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 200Mbps*',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'poppin',
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                        /*overflow: TextOverflow.ellipsis*/
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'Free Getting Started Kit and Shipping',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          // Text(
                          //   '•',
                          //   style: TextStyle(fontSize: 20),
                          //   // maxLines: 5,
                          //   // softWrap: true,
                          //   // overflow: TextOverflow.visible,
                          // ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'Speed good for up to 8 devices at the same time',
                              maxLines: 5,
                              // softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: DottedLine(
                          dashColor: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'MMK 136,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '/mo',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: OutlinedButton(
                              style: buttonStyleWithBordersideColor,
                              onPressed: () {},
                              child: const Text(
                                'Request',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Divider(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
