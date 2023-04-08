import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends ConsumerState<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ListTile(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          title: Text(
                            'Choose your language',
                            style: txtLarge.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              OutlinedButton(
                                style: buttonStyleWithBordersideColor,
                                onPressed: () {},
                                child: const Text(
                                  'English',
                                  style: txtLarge,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              OutlinedButton(
                                style: buttonStyleWithBordersideColor,
                                onPressed: () {},
                                child: const Text(
                                  'Myanmar',
                                  style: txtLarge,
                                ),
                              )
                              
                            ],
                          ),
                        
                          // actions: const [],
                        );
                      },
                    );
                    // context.pushNamed(myAddresses);
                  },
                  title: const Text(
                    'Language',
                    style: txtLarge,
                  ),
                  trailing: FittedBox(
                    child: Row(
                      children: const [
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // context.pushNamed(myAddresses);
                  },
                  title: const Text(
                    'Currency',
                    style: txtLarge,
                  ),
                  trailing: FittedBox(
                    child: Row(
                      children: const [
                        Text(
                          'MMK',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // context.pushNamed(myOrders);
                  },
                  title: const Text(
                    'Change Password',
                    style: txtLarge,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Receive Push Information",
                        style: txtLarge,
                      ),
                      Transform.scale(
                        scale: 0.6,
                        alignment: Alignment.centerRight,
                        child: CupertinoSwitch(
                          activeColor: AppColor.red,
                          value: true,
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
