import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/core/error_text.dart';
import 'package:sora_myanmar/core/loader.dart';
import 'package:sora_myanmar/providers/blog_provider.dart';

import '../../../constants/widgets_constants.dart';
import '../../../providers/route_provider.dart';

class BlogAllWidget extends ConsumerStatefulWidget {
  const BlogAllWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BlogAllWidgetState();
}

class _BlogAllWidgetState extends ConsumerState<BlogAllWidget> {
  bool isBookmark = false;

  bool isFavourite = false;
  final List<int> _isFavouriteList = [];
  final List<int> _isBookedList = [];
  void _isFavourite(int index) {
    // _isFavourite = selectedIndex.contains(index);
    if (_isFavouriteList.contains(index)) {
      _isFavouriteList.remove(index);
    } else {
      _isFavouriteList.add(index);
    }
    setState(() {});
  }

  void _isBook(int index) {
    // _isFavourite = selectedIndex.contains(index);
    if (_isBookedList.contains(index)) {
      _isBookedList.remove(index);
    } else {
      _isBookedList.add(index);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(blogProvider).when(
          data: (list) {
            print('all List ${list.length}');
            return ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final company = list[index];
                // final salary = company?.service?.first;

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
                              children: [
                                Text(
                                  company?.type ?? '',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  company?.name ?? '',
                                  style: txtMedium,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  // color: Colors.amberAccent,
                                  width:
                                      MediaQuery.of(context).size.width * 0.20,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                _isFavourite(index);
                                              },
                                              child: _isFavouriteList
                                                      .contains(index)
                                                  ? const Icon(
                                                      CupertinoIcons.heart_fill,
                                                      color: AppColor.red,
                                                    )
                                                  : const Icon(
                                                      CupertinoIcons.heart)),
                                          const Text(
                                            '200',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              _isBook(index);
                                            },
                                            child: _isBookedList.contains(index)
                                                ? const Icon(
                                                    CupertinoIcons
                                                        .bookmark_fill,
                                                    size: 24,
                                                    color: AppColor.red,
                                                  )
                                                : const Icon(
                                                    CupertinoIcons.bookmark,
                                                    size: 24,
                                                  ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              top: 16,
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
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            company?.description ??
                                "Thanks for offering me a promotion to the role of (job name). I'd love to accept, but I would like to discuss my starting salary before I do. I have checked out similar roles externally, and the starting salaries are much higher. ",
                            // maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
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
                                    "https://sora-mart.com/storage/info/636f82f5a5800_photo.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // Positioned(
                                //   bottom: 18,
                                //   child: ElevatedButton(
                                //     style: ElevatedButton.styleFrom(
                                //       backgroundColor: AppColor.red,
                                //       shape: const RoundedRectangleBorder(
                                //         borderRadius: BorderRadius.only(
                                //             bottomRight: Radius.circular(30)),
                                //       ),
                                //     ),
                                //     onPressed: () {},
                                //     child: const Text(
                                //       'UI/UX Designer',
                                //     ),
                                //   ),
                                // ),
                                Positioned(
                                  bottom: 50,
                                  child: CustomPaint(
                                    painter: MyParallelogram(),
                                    // child: const Text(
                                    //   'UI/UX Designer',
                                    // ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 25,
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
          },
          error: (error, stackTrace) => ErrorText(error: error.toString()),
          loading: () => const Loader(),
        );
  }
}
