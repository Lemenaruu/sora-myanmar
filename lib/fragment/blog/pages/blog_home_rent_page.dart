import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';

import '../../../constants/widgets_constants.dart';

class BlogHomeRentPage extends StatefulWidget {
  const BlogHomeRentPage({super.key});

  @override
  State<BlogHomeRentPage> createState() => _BlogHomeRentPageState();
}

class _BlogHomeRentPageState extends State<BlogHomeRentPage> {
  final PageController _pageController = PageController(initialPage: 0);
  List<String> imageList = [
    "https://sora-mart.com/storage/info/636f832c62335_photo.jpg",
    "https://sora-mart.com/storage/info/636f840674926_photo.jpg",
    "https://sora-mart.com/storage/info/636f84b97b7e2_photo.jpg",
    "https://sora-mart.com/storage/info/636f82a5d49d1_photo.jpg",
  ];

  bool isBookmark = false;
  bool isFavourite = false;

  // the index of the current page
  int _activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Rent Near Tokyo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
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
                      )
                    ],
                  ),
                  Flexible(
                    child: Text('Sat, 1 Jan 2022',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.24,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _activePage = page;
                        });
                      },
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          child: Image.network(
                            imageList[index],
                            height: 25.0,
                            width: 25.0,
                            fit: BoxFit.cover,
                          ),
                        );
                        // colors[index % colors.length];
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 6,
                    right: 18,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade50,
                      ),
                      width: 120,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavourite = !isFavourite;
                                    });
                                  },
                                  child: isFavourite
                                      ? const Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.black,
                                          // size: 22,
                                          size: 24,
                                        )
                                      : const Icon(
                                          CupertinoIcons.heart_fill,
                                          color: AppColor.red,
                                          size: 24,
                                        ),
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
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isBookmark = !isBookmark;
                                  });
                                },
                                child: isBookmark
                                    ? const Icon(
                                        CupertinoIcons.bookmark,
                                        size: 24,
                                        // color: AppColor.red,
                                      )
                                    : const Icon(
                                        CupertinoIcons.bookmark_fill,
                                        size: 24,
                                        color: AppColor.red,
                                      )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 5,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                            imageList.length,
                            (index) => InkWell(
                                  onTap: () {
                                    _pageController.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: _activePage == index
                                        ? Colors.red
                                        : Colors.grey,
                                  ),
                                )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rental Price - MMK 300,000 (apx)',
                    style: txtLarge.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgPic.location,
                        height: 22,
                        color: Colors.black54,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Address',
                        style: txtLarge.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Nishi-ku, Yakohoma City,Kanagawa Pref.',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '1 min walk from Azabu-juban Sta.',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Minato-ku, Tokyo/1LDK/44.7 m',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgPic.facilities,
                        height: 24,
                        color: Colors.black54,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Facilities',
                        style: txtLarge.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '1 Room-Sharehouse',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '2 Beds, 1 Bath',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Air-Con,TV, Washing Machine, Wide Space Kitchen',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Good Water, Good Electricity',
                          maxLines: 2,
                          style: txtMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Request Date/Time To Roommate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Flexible(
                        child: Text(
                          'Meet and ask anything you want to know before renting the house',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 30,
                      child: OutlinedButton(
                        style: buttonStyleWithBordersideColor,
                        onPressed: () {},
                        child: const Text(
                          'Request a Tour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.red,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    OutlinedButton(
                      style: buttonStyleWithBackgroundColor,
                      onPressed: () {},
                      child: const Text(
                        'RENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
