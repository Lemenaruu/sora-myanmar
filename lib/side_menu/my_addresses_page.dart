import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/widgets_constants.dart';

enum MyAdresses {
  maymyintthu,
  gaga,
}

class MyAddressesPage extends ConsumerStatefulWidget {
  const MyAddressesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyAddressesPageState();
}

class _MyAddressesPageState extends ConsumerState<MyAddressesPage> {
  MyAdresses selectedRadio = MyAdresses.maymyintthu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Addresses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                FittedBox(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,

                    // color: Colors.amberAccent,
                    child: Row(
                      children: [
                        Radio<MyAdresses>(
                          // fillColor: MaterialStateProperty.all(
                          //   Colors.black,
                          // ),

                          activeColor: AppColor.red,
                          value: MyAdresses.maymyintthu,
                          groupValue: selectedRadio,
                          onChanged: (MyAdresses? value) {
                            setState(() {
                              selectedRadio = value!;
                            });
                          },
                        ),
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: selectedRadio == MyAdresses.maymyintthu
                                      ? Colors.pink.shade50
                                      : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color:
                                        selectedRadio == MyAdresses.maymyintthu
                                            ? AppColor.red
                                            : Colors.transparent,
                                    width: 1,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'May Myint Thu',
                                      style: txtMedium.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      'maymyintthu@gmail.com',
                                    ),
                                    const Text(
                                      '+959 763 092 392',
                                    ),
                                    const Text(
                                      'Myanmar',
                                    ),
                                    const Text(
                                      'No.112/ Pagoda Street/ Insein/ ',
                                    ),
                                    const Text(
                                      'Yangon/ 11061',
                                    ),
                                    Text(
                                      'Default address',
                                      style: txtMedium.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 14,
                              top: 14,
                              child: Text(
                                'Edit',
                                style: txtMedium.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    // color: Colors.amberAccent,
                    child: Row(
                      children: [
                        Radio<MyAdresses>(
                          // fillColor: MaterialStateProperty.all(
                          //   Colors.black,
                          // ),

                          activeColor: AppColor.red,
                          value: MyAdresses.gaga,
                          groupValue: selectedRadio,
                          onChanged: (MyAdresses? value) {
                            setState(() {
                              selectedRadio = value!;
                            });
                          },
                        ),
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: selectedRadio == MyAdresses.gaga
                                      ? Colors.pink.shade50
                                      : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: selectedRadio == MyAdresses.gaga
                                        ? AppColor.red
                                        : Colors.transparent,
                                    width: 1,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gaga',
                                      style: txtMedium.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      'gaga@gmail.com',
                                    ),
                                    const Text(
                                      '+959 763 092 392',
                                    ),
                                    const Text(
                                      'Myanmar',
                                    ),
                                    const Text(
                                      'No.112/ Pagoda Street/ Insein/ ',
                                    ),
                                    const Text(
                                      'Yangon/ 11061',
                                    ),
                                    Text(
                                      'Default address',
                                      style: txtMedium.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 14,
                              top: 14,
                              child: Text(
                                'Edit',
                                style: txtMedium.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 1,
              left: 1,
              child: OutlinedButton(
                style: buttonStyleWithBackgroundColor,
                onPressed: () {},
                child: const Text(
                  'Add New Address',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
