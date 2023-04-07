import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants/widgets_constants.dart';

enum VisaType {
  workVisa,
  studentVisa,
  permanentResident,
  refugee,
  other,
}

class RentForm2Page extends ConsumerStatefulWidget {
  const RentForm2Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RentForm2PageState();
}

class _RentForm2PageState extends ConsumerState<RentForm2Page> {
  VisaType selectedRadio = VisaType.workVisa;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent Form'),
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
                  backgroundColor: Colors.pink.shade50,
                  radius: 10,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: txtMedium.copyWith(
                        color: AppColor.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: inputDecoration.copyWith(
                label: const Text('Mobile Number'),
                labelStyle: txtMedium.copyWith(),
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
                      labelStyle: txtMedium.copyWith(),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      label: const Text('Building/Apartment'),
                      labelStyle: txtMedium.copyWith(),
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
                      suffixIconColor: Colors.grey,
                      suffixIcon: const Icon(Icons.keyboard_arrow_down),
                      label: const Text('City/Town'),
                      labelStyle: txtMedium.copyWith(),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.45,
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      suffixIconColor: Colors.grey,
                      suffixIcon: const Icon(Icons.keyboard_arrow_down),
                      label: const Text('Prefecture'),
                      labelStyle: txtMedium.copyWith(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Visa Type',
              style: txtMedium.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio<VisaType>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: VisaType.workVisa,
                  groupValue: selectedRadio,
                  onChanged: (VisaType? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Work Visa',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            Row(
              children: [
                Radio<VisaType>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: VisaType.studentVisa,
                  groupValue: selectedRadio,
                  onChanged: (VisaType? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Student Visa',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            Row(
              children: [
                Radio<VisaType>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: VisaType.permanentResident,
                  groupValue: selectedRadio,
                  onChanged: (VisaType? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Permanent Resident',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            Row(
              children: [
                Radio<VisaType>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: VisaType.refugee,
                  groupValue: selectedRadio,
                  onChanged: (VisaType? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Refugee',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            Row(
              children: [
                Radio<VisaType>(
                  activeColor: AppColor.red,
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  value: VisaType.other,
                  groupValue: selectedRadio,
                  onChanged: (VisaType? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text(
                  'Other',
                  style: txtMedium.copyWith(),
                ),
              ],
            ),
            const Spacer(),
            OutlinedButton(
              style: buttonStyleWithBackgroundColor,
              onPressed: () {
                context.pushNamed(rentForm3);
              },
              child: const Text(
                'NEXT',
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
