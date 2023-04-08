import 'package:flutter/material.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '1.Terms of Service',
                  style: txtLarge,
                  // txtMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A terms of service agreement is supposed to be a flexible document that adapts with your business. You should establish a process for how you will update your users about any changes you make to your policy.',
                  style: txtMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '2.General Use',
                  style: txtLarge,
                  //  txtMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A terms of service agreement is supposed to be a flexible document that adapts with your business. You should establish a process for how you will update your users about any changes you make to your policy.',
                  style: txtMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '3.Legal Conditions',
                  style: txtLarge,
                  //  txtMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A terms of service agreement is supposed to be a flexible document that adapts with your business. You should establish a process for how you will update your users about any changes you make to your policy.',
                  style: txtMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
