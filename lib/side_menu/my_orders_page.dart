import 'package:flutter/material.dart';

import '../constants/widgets_constants.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  int _selectedButton = 0;
  List<String> list = ['Processing', 'Completed', 'Cancelled'];
  int selectedButton(int index) {
    setState(() {
      _selectedButton = index;

      // changedColor = !changedColor;
    });

    return _selectedButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 35,
              child: ListView.builder(
                shrinkWrap: true,
                // reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 0,
                      left: 0,
                    ),
                    child:
                        //  category.name != null
                        //     ?
                        GestureDetector(
                      onTap: () {
                        selectedButton(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Container(
                          decoration: BoxDecoration(
                            color: _selectedButton == index
                                ? AppColor.red
                                : Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(30),
                            // border: Border.all(color: AppColor.red),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                list[index],
                                style: TextStyle(
                                  color: _selectedButton == index
                                      ? Colors.white
                                      : AppColor.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      // color: Colors.amberAccent,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.24,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order ID: #119977351',
                                style: txtMedium.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'View Details',
                                style: txtMedium.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Placed on:',
                                style: txtMedium.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'Thu, 30 Dec',
                                style: txtMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Category:',
                                style: txtMedium.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'Phone,Accessories',
                                style: txtMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quantity:',
                                style: txtMedium.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                '2',
                                style: txtMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Cost:',
                                style: txtMedium.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'MMK 1,100,000',
                                style: txtMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Status:',
                                style: txtMedium.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Pending',
                                style: txtMedium.copyWith(
                                  color: AppColor.red,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
