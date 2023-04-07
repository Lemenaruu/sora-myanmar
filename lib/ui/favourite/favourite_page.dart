import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

import '../../constants/string_constants.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  int _productCount = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('Favourites'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    FittedBox(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.22,
                        // width: MediaQuery.of(context).size.width * 0.25,
                        // height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade100,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,

                        child: Image.asset(
                          'assets/images/earphone.png',
                          // fit: BoxFit.cover,
                          height: 60,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: size.height * 0.2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    'Remax Earbug-R series 1',
                                    // maxLines: 1,
                                    style: txtLarge,
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text('#647957'),
                              const SizedBox(
                                height: 6,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  '100 points',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'MMK 500,000',
                                    style: txtMedium.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _productCount != 0
                                                  ? _productCount--
                                                  : _productCount;
                                            });
                                          },
                                          child: const Text(
                                            '-',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                        Text(_productCount.toString()),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _productCount++;
                                            });
                                          },
                                          child: const Text(
                                            '+',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        // Icon(CupertinoIcons.add),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: SvgPicture.asset(
                          SvgPic.closeX,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
