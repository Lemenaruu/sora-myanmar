import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sora_myanmar/constants/string_constants.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class OrderDetailsPage extends ConsumerStatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderDetailsPageState();
}

class _OrderDetailsPageState extends ConsumerState<OrderDetailsPage> {
  bool _isPending = true;
  bool _isOrderConfirmed = true;
  bool _isPackaging = false;
  bool _isDelivery = false;
  bool _isComplete = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Thu, 30 Dec, 2021',
                    style: txtMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID: #119977351',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
                              SvgPic.chat,
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
                            child: Text(
                              'Cancel Order',
                              style: txtMedium.copyWith(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CheckBoxWidget(
                        onChanged: (value) {
                          setState(() {
                            _isPending = value!;
                          });
                        },
                        value: _isPending,
                      ),
                      CheckboxName(
                        color: _isPending ? AppColor.red : Colors.black,
                        name: 'Pending',
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
                    padding: EdgeInsets.symmetric(horizontal: 14.5),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashLength: 3,

                        dashRadius: 30,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CheckBoxWidget(
                        onChanged: (value) {
                          setState(() {
                            _isOrderConfirmed = value!;
                          });
                        },
                        value: _isOrderConfirmed,
                      ),
                      CheckboxName(
                        color: _isOrderConfirmed ? AppColor.red : Colors.black,
                        name: 'Order Confirmed',
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
                    padding: EdgeInsets.symmetric(horizontal: 14.5),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashLength: 3,

                        dashRadius: 30,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CheckBoxWidget(
                        onChanged: (value) {
                          setState(() {
                            _isPackaging = value!;
                          });
                        },
                        value: _isPackaging,
                      ),
                      CheckboxName(
                        color: _isPackaging ? AppColor.red : Colors.black,
                        name: 'Packaging',
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
                    padding: EdgeInsets.symmetric(horizontal: 14.5),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashLength: 3,

                        dashRadius: 30,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CheckBoxWidget(
                        onChanged: (value) {
                          setState(() {
                            _isDelivery = value!;
                          });
                        },
                        value: _isDelivery,
                      ),
                      CheckboxName(
                        color: _isDelivery ? AppColor.red : Colors.black,
                        name: 'Delivery',
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
                    padding: EdgeInsets.symmetric(horizontal: 14.5),
                    child: SizedBox(
                      height: 30,
                      child: DottedLine(
                        dashColor: AppColor.red,
                        lineThickness: 3,
                        dashLength: 3,

                        dashRadius: 30,

                        // dashGapLength: 3,
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CheckBoxWidget(
                        onChanged: (value) {
                          setState(() {
                            _isComplete = value!;
                          });
                        },
                        value: _isComplete,
                      ),
                      CheckboxName(
                        color: _isComplete ? AppColor.red : Colors.black,
                        name: 'Complete',
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgPic.user,
                      width: 18,
                      height: 18,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    const Text(
                      'Pick up by myself at ',
                      style: txtMedium,
                    ),
                    SvgPicture.asset(
                      SvgPic.location,
                      height: 16,
                    ),
                    Text(
                      ' M-Drive Shop',
                      style: txtMedium.copyWith(
                        color: AppColor.red,
                        decorationThickness: 2,
                        wordSpacing: 2,
                        letterSpacing: 1,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgPic.boxPackage,
                      color: Colors.black,
                      width: 18,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 4,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.34,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Apple Multi-Touch Magic Mouse',
                          style: txtMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Qty: 1',
                          style: txtMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.34,
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'MMK 320,000',
                          style: txtMedium,
                        ),
                      ),
                    ),
                  ],
                ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxName extends StatelessWidget {
  const CheckboxName({
    super.key,
    required this.color,
    required this.name,
  });
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      overflow: TextOverflow.ellipsis,
      style: txtMedium.copyWith(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
