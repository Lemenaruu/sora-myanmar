import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/widgets_constants.dart';
import '../../../providers/route_provider.dart';

class BlogHomeWifiWidget extends ConsumerStatefulWidget {
  const BlogHomeWifiWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BlogAllWidgetState();
}

class _BlogAllWidgetState extends ConsumerState<BlogHomeWifiWidget> {
  bool isBookmark = false;

  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  'Tokyo',
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
                          'Xfinity',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Starting plan at MMK 500,000',
                          style: txtMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        ? const Icon(CupertinoIcons.heart)
                                        : const Icon(
                                            CupertinoIcons.heart_fill,
                                            color: AppColor.red,
                                          ),
                                  ),
                                  const Text(
                                    '200',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
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
                                    child: Icon(
                                      isBookmark
                                          ? CupertinoIcons.bookmark_fill
                                          : CupertinoIcons.bookmark,
                                      color: isBookmark ? AppColor.red : null,
                                      size: 22,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 18,
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
                  'Data Limit - Unlimited',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  "Download speed up to 200 Mbps* ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(blogHomeWifiDetail);
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            "https://sora-mart.com/storage/info/636f84b97b7e2_photo.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Positioned(
                        //   bottom: 18,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
