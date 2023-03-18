import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/widgets_constants.dart';

class SavedPage extends ConsumerStatefulWidget {
  const SavedPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SaveState();
}

class _SaveState extends ConsumerState<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // color: Colors.amberAccent,
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
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
                                fontSize: 12,
                                color: Colors.grey.shade400,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // width: MediaQuery.of(context).size.width * 0.25,
                        // height: MediaQuery.of(context).size.height * 0.13,
                        color: Colors.grey.shade100,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/box.png",
                            fit: BoxFit.none,
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.13,
                          ),
                        ),
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
                        fontSize: 10,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.delete,
                      size: 18,
                      color: AppColor.red,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
