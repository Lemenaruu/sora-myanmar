import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';

import '../../constants/widgets_constants.dart';

class ShoppingCartPage extends ConsumerStatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShoppingCartPageState();
}

class _ShoppingCartPageState extends ConsumerState<ShoppingCartPage> {
  bool _isChecked = false;
  int _productCount = 0;
  int _pointCount = 2500;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Cart',
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColor.red,
                    child: SvgPicture.asset(
                      SvgPic.cart,
                      height: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        height: 0,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink.shade100,
                    radius: 15,
                    child: SvgPicture.asset(
                      SvgPic.folder,
                      height: 22,
                      color: AppColor.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.amberAccent,
                height: size.height * 0.5,

                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  // physics: BouncingScrollPhysics(),
                  // physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: size.height * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade100,
                                ),
                                width: size.width * 0.25,
                                child: Image.asset(
                                  'assets/images/earphone.png',
                                  // fit: BoxFit.cover,
                                  height: 60,
                                  width: 50,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
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
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),

                                                  Text(
                                                      _productCount.toString()),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _productCount++;
                                                      });
                                                    },
                                                    child: const Text(
                                                      '+',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
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
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _isChecked,
                        checkColor: Colors.white,
                        dense: true,
                        activeColor: AppColor.red,
                        checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        title: Text(
                          'Use my M-Points',
                          style: txtMedium.copyWith(
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(

                            // shape: BoxShape.circle,
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: AppColor.red,
                            )),
                        // margin: const EdgeInsets.all(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _pointCount != 0
                                      ? _pointCount -= 100
                                      : _pointCount;
                                });
                              },
                              child: const Text(
                                '-',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.red,
                                ),
                              ),
                            ),

                            Text(
                              _pointCount.toString(),
                              style: const TextStyle(
                                color: AppColor.red,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _pointCount += 100;
                                });
                              },
                              child: const Text(
                                '+',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.red,
                                ),
                              ),
                            ),
                            // Icon(CupertinoIcons.add),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'M-Points Discount',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'MMK -23,000',
                      style: TextStyle(
                          // color: Colors.grey,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sub Total Cost',
                      style: TextStyle(
                        // color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Flexible(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: 'MMK 1,100,000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.red,
                            fontFamily: 'poppin',
                          ),
                        ),
                        TextSpan(
                          text: ' .1,123,000',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,

                            fontFamily: 'poppin',
                          ),
                        ),
                      ])),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: buttonStyleWithBackgroundColor,
                onPressed: () {},
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
               SizedBox(
                height: kBottomNavigationBarHeight + 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
