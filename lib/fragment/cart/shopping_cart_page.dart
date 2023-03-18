import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/widgets_constants.dart';

class ShoppingCartPage extends ConsumerStatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShoppingCartPageState();
}

class _ShoppingCartPageState extends ConsumerState<ShoppingCartPage> {
  bool _isChecked = false;

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
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColor.red,
                    child: Icon(
                      CupertinoIcons.cart,
                      size: 16,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink.shade100,
                    radius: 15,
                    child: const Icon(
                      Icons.folder_open_outlined,
                      color: AppColor.red,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),

                shrinkWrap: true,
                // primary: false,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
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
                          ],
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            // margin: const EdgeInsets.all(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Text(
                                                  '-',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),

                                                Text('1'),
                                                Text(
                                                  '+',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
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
              const Divider(),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _isChecked,
                          checkColor: Colors.white,
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
                            'I accept the policy and terms',
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
                            children: const [
                              Text(
                                '-',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.red,
                                ),
                              ),

                              Text(
                                '2500',
                                style: TextStyle(
                                  color: AppColor.red,
                                ),
                              ),
                              Text(
                                '+',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.red,
                                ),
                              ),
                              // Icon(CupertinoIcons.add),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
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
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: buttonStyleWithBackgroundColor,
                    onPressed: () {},
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: kBottomNavigationBarHeight + 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
