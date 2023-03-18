import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/widgets_constants.dart';

class BlogHomeRentPage extends StatefulWidget {
  const BlogHomeRentPage({super.key});

  @override
  State<BlogHomeRentPage> createState() => _BlogHomeRentPageState();
}

class _BlogHomeRentPageState extends State<BlogHomeRentPage> {
  final PageController _pageController = PageController(initialPage: 0);
  List<Color> colors = [
    Colors.black,
    Colors.yellow,
    Colors.green,
    Colors.teal,
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
                          "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
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
                  const Flexible(
                    child: Text(
                      'Sat, 1 Jan 2022',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
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
                      itemCount: colors.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          child: Container(
                            color: colors[index % colors.length],
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
                                          // size: 22,
                                        )
                                      : const Icon(
                                          CupertinoIcons.heart_fill,
                                          color: AppColor.red,
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
                                        Icons.bookmark_outline,
                                        // color: AppColor.red,
                                      )
                                    : const Icon(
                                        Icons.bookmark,
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
                            colors.length,
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
                children: [
                  const Text(
                    'Rental Price - MMK 300,000 (apx)',
                    style: TextStyle(),
                  ),
                  Row(
                    children: const [
                      Icon(CupertinoIcons.location_solid),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Address'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                          'Nishi-ku, Yakohoma City,Kanagawa Pref.',
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
                        radius: 4,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '1 min walk from Azabu-juban Sta.',
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
                        radius: 4,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Minato-ku, Tokyo/1LDK/44.7 m',
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
                    children: const [
                      FaIcon(CupertinoIcons.building_2_fill),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Facilities'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                          '1 Room-Sharehouse',
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
                        radius: 4,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '2 Beds, 1 Bath',
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
                        radius: 4,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Air-Con,TV, Washing Machine, Wide Space Kitchen',
                        ),
                      ),
                    ],
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
                          'Good Water, Good Electricity',
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
