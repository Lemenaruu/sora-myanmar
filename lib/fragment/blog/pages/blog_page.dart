import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/fragment/blog/widgets/blog_all_widget.dart';
import 'package:sora_myanmar/fragment/blog/widgets/blog_home_wifi_widget.dart';

import '../widgets/Jobs_widget.dart';

class BlogPage extends ConsumerStatefulWidget {
  const BlogPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BlogPageState();
}

class _BlogPageState extends ConsumerState<BlogPage> {
  bool isAllClicked = false;
  bool isHomeWifi = false;

  List<String> title = [
    'All',
    'Jobs',
    'House Rent',
    'Simcard/Wifi',
    'Mobile',
  ];
  List<dynamic> blogCategories = [
    const BlogAllWidget(),
    const JobsWidget(),
    const SizedBox(),
    const BlogHomeWifiWidget(),
    const SizedBox(),
  ];

  bool isBookmark = false;

  bool isFavourite = false;

  int _selectedButton = 0;

  void selectedButton(BuildContext context, int index) {
    _selectedButton = index;

    setState(() {});
  }

  // selected(BuildContext context, int index) {
  //   return blogCategories[index];
  // }

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
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: _selectedButton == index
                              ? AppColor.red
                              : Colors.pink.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          selectedButton(context, index);
                          // context.pushNamed(blogHomewifi);
                          // setState(() {});
                        },
                        child: Text(
                          title[index],
                          style: TextStyle(
                            color: _selectedButton == index
                                ? Colors.white
                                : AppColor.red,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // _selectedButton == blogCategories.
              //     ? const BlogAllWidget()
              //     : const Text('null'),
              // _selectedButton == blogCategories[1]
              //     ? const BlogHomeWifiWidget()
              //     : const Text('null'),
              SizedBox(
                height: MediaQuery.of(context).size.height -
                    55 -
                    kBottomNavigationBarHeight,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: blogCategories.length,
                  itemBuilder: (context, index) {
                    print("_selectedButton   $_selectedButton and $index");
                    switch (_selectedButton) {
                      case 0:
                        return blogCategories[_selectedButton];
                        // selected(context, _selectedButton);

                        break;

                      case 1:
                        return blogCategories[_selectedButton];
                        // selected(context, _selectedButton);

                        break;
                      case 2:
                        return blogCategories[_selectedButton];
                        // selected(context, _selectedButton);

                        break;
                      case 3:
                        return blogCategories[_selectedButton];
                        // selected(context, _selectedButton);

                        break;
                      case 4:
                        return blogCategories[_selectedButton];
                        // selected(context, _selectedButton);

                        break;

                      default:
                        break;
                    }
                    return null;
                    // (_selectedButton == index &&
                    //         _selectedButton <= index)
                    //     ? blogCategories[index]
                    //     : blogCategories[++index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



 // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 8.0, horizontal: 5),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       elevation: 0,
                  //       backgroundColor: Colors.pink.shade50,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       context.pushNamed(blogHomeRent);
                  //     },
                  //     child: const Text(
                  //       'House Rent',
                  //       style: TextStyle(color: AppColor.red),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 8.0, horizontal: 5),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       elevation: 0,
                  //       backgroundColor: Colors.pink.shade50,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       // context.pushNamed(blogHomewifi);
                  //       setState(() {
                  //         isHomeWifi = !isHomeWifi;
                  //       });
                  //     },
                  //     child: const Text(
                  //       'Simcard/Wifi',
                  //       style: TextStyle(color: AppColor.red),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 8.0, horizontal: 5),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       elevation: 0,
                  //       backgroundColor: Colors.pink.shade50,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       context.pushNamed(blogJobs);
                  //     },
                  //     child: const Text(
                  //       'Jobs',
                  //       style: TextStyle(color: AppColor.red),
                  //     ),
                  //   ),
                  // ),