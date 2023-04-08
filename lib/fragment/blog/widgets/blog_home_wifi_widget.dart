import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/core/error_text.dart';
import 'package:sora_myanmar/core/loader.dart';
import 'package:sora_myanmar/providers/blog_provider.dart';

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
          data: (companies) {
            return ListView.builder(
              itemCount: companies.length,
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
          error: (error, stackTrace) {
            return ErrorText(error: error.toString());
          },
          loading: () => const Loader(),
        );
  }
}
