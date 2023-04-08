import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/widgets_constants.dart';

class BlogJobsPage extends StatelessWidget {
  const BlogJobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.search,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'UI/UX Designer',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://sora-mart.com/job/625ac5fa8979e_jac.jpg",
                            height: 25.0,
                            width: 25.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          'Sample Company',
                          style: TextStyle(
                              // fontSize: 16,
                              // fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const Text(
                      'Sat, 1 Jan 2022',
                      style: TextStyle(fontSize: 12, color: Colors.grey
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://sora-mart.com/storage/info/636f82f5a5800_photo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned(
                //   bottom: 50,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: AppColor.red,
                //         shape: const RoundedRectangleBorder(
                //           borderRadius: BorderRadius.only(
                //               bottomRight: Radius.circular(30)),
                //         ),
                //       ),
                //       onPressed: () {},
                //       child: const Text(
                //         'UI/UX Designer',
                //       )),
                // ),
                Positioned(
                  bottom: 70,
                  child: CustomPaint(
                    painter: MyParallelogram(),
                    // child: const Text(
                    //   'UI/UX Designer',
                    // ),
                  ),
                ),
                Positioned(
                  bottom: 45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'UI/UX Designer',
                      style: txtMedium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://sora-mart.com/job/625ac5fa8979e_jac.jpg",
                      height: 25.0,
                      width: 25.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 18,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                    ),
                    width: 120,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                CupertinoIcons.heart,
                                size: 22,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.bookmark_outlined,
                            color: AppColor.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Salary-Negotiable',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Thanks for offering me a promotion to the role of (job name). I'd love to accept, but I would like to discuss my starting salary before I do. I have checked out similar roles externally, and the starting salaries are much higher. ",
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          // color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      OutlinedButton(
                        style: buttonStyleWithBackgroundColor,
                        onPressed: () {},
                        child: const Text(
                          'APPLY',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
