import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class OrderDetailsPage extends ConsumerStatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderDetailsPageState();
}

class _OrderDetailsPageState extends ConsumerState<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Thu, 30 Dec, 2021',
                  style: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID: #119977351',
                    style: txtMedium.copyWith(),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: AppColor.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            "assets/svgs/chat.svg",
                            // "assets/svgs/chat-dot-round.svg",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            height: 19,
                            width: 19,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 25,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.red,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () {},
                          child: Text('Cancel Order',
                              style: txtMedium.copyWith(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStateProperty.all(
                          AppColor.red,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Pending',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: AppColor.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '(Estimated 1 Day)',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashRadius: 10,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStateProperty.all(
                          AppColor.red,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Pending',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: AppColor.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '(Estimated 1 Day)',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashRadius: 10,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 3,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Packaging',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '(Estimated 1 Day)',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashRadius: 10,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 3,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Delivery',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '(Estimated 2 Days)',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashRadius: 10,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 3,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Complete',
                        overflow: TextOverflow.ellipsis,
                        style: txtMedium.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/user.svg",
                      fit: BoxFit.contain,
                      width: 18,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Contact',
                      style: txtMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 3,
                    backgroundColor: AppColor.red,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '+959 763 092 392',
                    style: txtMedium.copyWith(
                        // color: Colors.grey,
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
                    radius: 3,
                    backgroundColor: AppColor.red,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'No.112/ Pagoda Street / Insein/ Yangon',
                    style: txtMedium.copyWith(
                        // color: Colors.grey,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Pick up by myself at ',
                    style: txtMedium.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black87,
                    size: 18,
                  ),
                  Text(
                    ' M-Drive Shop',
                    style: txtMedium.copyWith(
                      color: AppColor.red,
                      decorationThickness: 2,
                      fontSize: 13,
                      wordSpacing: 2,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/box.png",
                      fit: BoxFit.contain,
                      width: 18,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Items',
                      style: txtMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                    // flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Apple Multi-Touch',
                        style: txtMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    // flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Qty: 1',
                        style: txtMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    // flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'MMK 320,000',
                        style: txtMedium,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const DottedLine(
                dashColor: Colors.grey,
              ),
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
