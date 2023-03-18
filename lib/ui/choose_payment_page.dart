import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/widgets_constants.dart';

enum Payment { cashOnDelivery, directBankTransfer, creditCard, paypal }

class ChoosePaymentMethodPage extends ConsumerStatefulWidget {
  const ChoosePaymentMethodPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChoosePaymentMethodState();
}

class _ChoosePaymentMethodState extends ConsumerState<ChoosePaymentMethodPage> {
  Payment selectedRadio = Payment.cashOnDelivery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Payment Method',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Radio<Payment>(
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  activeColor: AppColor.red,
                  value: Payment.cashOnDelivery,
                  groupValue: selectedRadio,
                  onChanged: (Payment? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                const Text('Cash On Delivery'),
              ],
            ),
            Row(
              children: [
                Radio<Payment>(
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),
                  

                  activeColor: AppColor.red,
                  value: Payment.directBankTransfer,
                  groupValue: selectedRadio,
                  onChanged: (Payment? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                const Text('Direct Bank Transfer'),
              ],
            ),
            Row(
              children: [
                Radio<Payment>(
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  activeColor: AppColor.red,
                  value: Payment.creditCard,
                  groupValue: selectedRadio,
                  onChanged: (Payment? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                const Text('Credit Card'),
              ],
            ),
            Row(
              children: [
                Radio<Payment>(
                  // fillColor: MaterialStateProperty.all(
                  //   Colors.black,
                  // ),

                  activeColor: AppColor.red,
                  value: Payment.paypal,
                  groupValue: selectedRadio,
                  onChanged: (Payment? value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                const Text('PayPal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
