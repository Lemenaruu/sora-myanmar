import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/string_constants.dart';
import '../constants/widgets_constants.dart';

class SavedPage extends ConsumerStatefulWidget {
  const SavedPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SaveState();
}

class _SaveState extends ConsumerState<SavedPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved',
          style: txtMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      // color: Colors.amberAccent,
                      height: size.height * 0.12,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'UI/UX Designer',
                                  style: txtMedium.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Sample Company',
                                  style: txtMedium.copyWith(
                                    fontSize: 10,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Salary - Negotiable. We are looking for an experienced and creative,We are looking for an experienced and creative',
                                  maxLines: 2,
                                  style: txtMedium.copyWith(
                                    fontSize: 11,
                                    color: Colors.grey.shade700,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: size.width * 0.25,
                                height: size.width * 0.25,
                                color: Colors.grey.shade100,
                                child: ClipRRect(
                                  child: Image.network(
                                    "https://sora-mart.com/storage/info/636f84b97b7e2_photo.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   bottom: size.width * 0.25 - 54,
                              //   left: size.width * 0.25 - 54,
                              //   child: SvgPicture.asset(
                              //     SvgPic.boxPackage,
                              //     color: Colors.grey,
                              //     fit: BoxFit.cover,
                              //     height: 36,
                              //     width: 36,
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Thu, 30 Dec, 2022",
                          style: txtMedium.copyWith(
                            fontSize: 11,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SvgPicture.asset(
                          SvgPic.trashCan,
                          height: 20,
                          color: AppColor.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
