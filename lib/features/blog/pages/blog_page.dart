import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants.dart';

import '../../../providers/route_provider.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  List<String> title = [
    'All',
    'Jobs',
    'House',
    'Simcard/Wifi',
    'Mobile',
  ];

  bool isBookmark = false;

  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Blog',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.pink.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              // context.pushNamed(blogHomewifi);
                            },
                            child: const Text(
                              'All',
                              style: TextStyle(color: AppColor.red),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.pink.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              context.pushNamed(blogHomeRent);
                            },
                            child: const Text(
                              'House Rent',
                              style: TextStyle(color: AppColor.red),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.pink.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              // context.pushNamed(blogHomewifi);
                            },
                            child: const Text(
                              'Simcard/Wifi',
                              style: TextStyle(color: AppColor.red),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.pink.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              // context.pushNamed(blogHomewifi);
                            },
                            child: const Text(
                              'Jobs',
                              style: TextStyle(color: AppColor.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //  ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   // physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: title.length,
                //   itemBuilder: (context, index) {
                //     return ;

                //     // Padding(
                //     //   padding: const EdgeInsets.symmetric(
                //     //       vertical: 8.0, horizontal: 5),
                //     //   child: ElevatedButton(
                //     //     style: ElevatedButton.styleFrom(
                //     //       elevation: 0,
                //     //       backgroundColor: Colors.pink.shade50,
                //     //       shape: RoundedRectangleBorder(
                //     //         borderRadius: BorderRadius.circular(20),
                //     //       ),
                //     //     ),
                //     //     onPressed: () {
                //     //       // context.pushNamed(blogHomewifi);
                //     //     },
                //     //     child: Text(
                //     //       title[index],
                //     //       style: const TextStyle(color: AppColor.red),
                //     //     ),
                //     //   ),
                //     // );
                //   },
                // ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.37,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '1hr ago',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'UI/UX Designer',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Sample Company',
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isFavourite = !isFavourite;
                                                });
                                              },
                                              child: !isFavourite
                                                  ? const Icon(
                                                      CupertinoIcons.heart)
                                                  : const Icon(
                                                      CupertinoIcons.heart_fill,
                                                      color: AppColor.red,
                                                    ),
                                            ),
                                            const Text(
                                              '200',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  print('isbook');
                                                  isBookmark = !isBookmark;
                                                });
                                              },
                                              child: isBookmark
                                                  ? const Icon(
                                                      Icons.bookmark,
                                                      color: AppColor.red,
                                                    )
                                                  : const Icon(
                                                      Icons.bookmark_outline,
                                                      // color: AppColor.red,
                                                    ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            'Salary Negotiable',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          const Text(
                            "Thanks for offering me a promotion to the role of (job name). I'd love to accept, but I would like to discuss my starting salary before I do. I have checked out similar roles externally, and the starting salaries are much higher. ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.pushNamed(blogJobs);
                              },
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.network(
                                      "https://www.springboard.com/blog/wp-content/uploads/2021/03/4-Reasons-Why-UI-Skills-Are-Critical-to-a-UX-Designer-scaled.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 18,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColor.red,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'UI/UX Designer',
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
