import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class PointHistoryPage extends ConsumerWidget {
  const PointHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Point History',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Oppo Reno6 4GB'),
                    Text(
                      'Order ID: #119977351',
                      style: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Thu, 30 Dec 2021',
                      style: txtMedium.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'MMK 150,000',
                  style: txtMedium,
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      const Text(
                        '+250',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Points',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
