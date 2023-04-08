import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';

import '../../constants/widgets_constants.dart';

class ShippingAndPaymentPage extends ConsumerStatefulWidget {
  const ShippingAndPaymentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShippingAndPaymentPageState();
}

class _ShippingAndPaymentPageState
    extends ConsumerState<ShippingAndPaymentPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping and Payment'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.amberAccent,
                    height: 40,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.pink.shade100,
                          child: const Icon(
                            CupertinoIcons.cart,
                            color: AppColor.red,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: AppColor.red,
                          radius: 15,
                          child: SvgPicture.asset(
                            SvgPic.folder,
                            height: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // color: Colors.amberAccent,
                    width: size.width,
                    height: size.height * 0.18,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // physics: const NeverScrollableScrollPhysics(),

                      shrinkWrap: true,
                      // primary: false,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: size.height * 0.15,
                                    width: size.width * 0.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.asset(
                                      'assets/images/earphone.png',
                                      // fit: BoxFit.cover,
                                      height: 60,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.15,
                                    width: size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Flexible(
                                            child: Text(
                                              'Remax Earbug-R series 1',
                                              style: txtMedium,
                                              // overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const Text(
                                            '#647957',
                                            style: txtMedium,
                                          ),
                                          Text(
                                            'MMK 500,000',
                                            style: txtMedium.copyWith(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgPic.location,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Add new address',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )
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
                    children: [
                      SvgPicture.asset(
                        SvgPic.paymentCard,
                        color: Colors.black87,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Choose Payment method',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgPic.delivery,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Delivery Method',
                            style: TextStyle(
                              // color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Pick up by myself at ',
                                style: txtMedium,
                              ),
                              SvgPicture.asset(
                                SvgPic.location,
                                height: 14,
                              ),
                              Text(
                                ' M-Drive Shop',
                                style: txtMedium.copyWith(
                                  color: AppColor.red,
                                  decorationThickness: 2,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Transform.scale(
                            scale: 0.6,
                            child: CupertinoSwitch(
                              activeColor: AppColor.red,
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pick up and save MMK 3,000 for delivery fee ',
                          style: txtMedium.copyWith(
                            color: Colors.grey,
                          ),
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
                    children: const [
                      Icon(
                        CupertinoIcons.info,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Used 2500 M-Points',
                        style: TextStyle(
                            // color: Colors.blueAccent,
                            ),
                      )
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
                      Text(
                        'Sub Total',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'MMK 1,540,000',
                        style: txtMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'MMK -320,000',
                        style: txtMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'M-Points Discount',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'MMK -23,000',
                        style: txtMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'MMK 3,000',
                        style: txtMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 106,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    OutlinedButton(
                      style: buttonStyleWithBackgroundColor,
                      onPressed: () {},
                      child: const Text(
                        'PROCEED TO PAYMENT',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Cost',
                          style: txtMedium.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'MMK 1,100,000',
                          style: txtMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColor.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
