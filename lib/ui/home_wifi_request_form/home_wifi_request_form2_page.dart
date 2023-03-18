import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/widgets_constants.dart';

enum SubscriptinPlan {
  monthly,
  yearly,
}

class HomeWifiRequestForm2Page extends ConsumerStatefulWidget {
  const HomeWifiRequestForm2Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeWifiRequestForm2PageState();
}

class _HomeWifiRequestForm2PageState
    extends ConsumerState<HomeWifiRequestForm2Page> {
  SubscriptinPlan selectedRadio = SubscriptinPlan.monthly;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Wifi Request Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.red,
                  radius: 10,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '1',
                      style: txtMedium.copyWith(
                        color: Colors.white,
                      ),
                    ),
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
                  backgroundColor: AppColor.red,
                  radius: 10,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '2',
                      style: txtMedium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: inputDecoration.copyWith(
                label: const Text('Mobile Number'),
                labelStyle: txtMedium.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      label: const Text('Unit/Room Number'),
                      labelStyle: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      label: const Text('Building/Apartment'),
                      labelStyle: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down),
                      label: const Text('City/Town'),
                      labelStyle: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down),
                      label: const Text('Prefecture'),
                      labelStyle: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Subscription Plan',
              style: txtMedium.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio<SubscriptinPlan>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: SubscriptinPlan.monthly,
                  groupValue: selectedRadio,
                  onChanged: (SubscriptinPlan? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Monthly',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            Row(
              children: [
                Radio<SubscriptinPlan>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: SubscriptinPlan.yearly,
                  groupValue: selectedRadio,
                  onChanged: (SubscriptinPlan? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Yearly',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            const Spacer(),
            OutlinedButton(
              style: buttonStyleWithBackgroundColor,
              onPressed: () {
                // context.pushNamed(rentForm3);
              },
              child: const Text(
                'REQUEST NOW',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
