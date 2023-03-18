import 'package:flutter/material.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        height: MediaQuery.of(context).size.height * 0.22,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Text(
                                    'Remax Earbug-R series 1',
                                    // maxLines: 1,
                                    style: TextStyle(fontSize: 14),
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const Text('#647957'),
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

                                        // shape: BoxShape.circle,
                                        // color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey)),
                                    // margin: const EdgeInsets.all(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),

                                        Text('1'),
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                        right: 1,
                        top: 1,
                        child: Image.asset(
                          'assets/images/close.png',
                          height: 16,
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
