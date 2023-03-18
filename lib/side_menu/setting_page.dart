import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                    // context.pushNamed(myAddresses);
                  },
                  title: const Text(
                    'My Addresses',
                    // style: txtMedium,
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
                    'My Addresses',
                    // style: txtMedium,
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
                  title: const Text('My Orders'),
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
                      Text(
                        "Receive Push Information",
                        style: txtMedium.copyWith(
                          fontSize: 16,
                        ),
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
