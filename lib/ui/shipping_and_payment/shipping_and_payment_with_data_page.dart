import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/widgets_constants.dart';

class ShippingAndPaymentWithDataPage extends ConsumerStatefulWidget {
  const ShippingAndPaymentWithDataPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShippingAndPaymentPageState();
}

class _ShippingAndPaymentPageState
    extends ConsumerState<ShippingAndPaymentWithDataPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping and Payment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: AppColor.red,
                      radius: 15,
                      child: Icon(
                        Icons.folder_open_outlined,
                        color: Colors.white,
                        size: 16,
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
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
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
                          Stack(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'May Myint Thu',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '+959 763 092 392',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'No.112/ Pagoda Street/ Insein/ Yangon',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
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
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/payment-card.svg",
                        color: Colors.black54,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Payment method',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: size.height * 0.03,
                    width: size.width * 0.08,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Master Card',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'May Myint Thu',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '264 254 381 132 7899',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
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
                        "assets/svgs/delivery-truck.svg",
                        color: Colors.black54,
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
                  SizedBox(
                    // color: Colors.amberAccent,
                    width: size.width,
                    height: size.height * 0.06,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://sora-mart.com/storage/info/636f84b97b7e2_photo.jpg",
                              width: size.width * 0.2,
                              height: size.height * 0.06,
                              // fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
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
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.black54,
                            size: 18,
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
                          value: false,
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
                    color: Colors.black54,
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
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                  height: 40,
                child: OutlinedButton(
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
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
