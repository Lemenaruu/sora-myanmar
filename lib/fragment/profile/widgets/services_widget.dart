import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/string_constants.dart';
import '../../../constants/widgets_constants.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: txtMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ServiceCard(
              imageUrl: SvgPic.jobs,
              title: 'Jobs',
            ),
            ServiceCard(
              imageUrl: SvgPic.houseRent,
              title: 'House Rent',
            ),
            ServiceCard(
              imageUrl: SvgPic.simcardWifi,
              title: 'Simcard and Wifi',
            ),
            ServiceCard(
              imageUrl: SvgPic.travel,
              title: 'Travel',
            ),
          ],
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  ServiceCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });
  String imageUrl;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      width: MediaQuery.of(context).size.width * 0.18,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 35,
            width: 35,
            padding: const EdgeInsets.all(5),
            child: SvgPicture.asset(
              imageUrl,
              fit: BoxFit.cover,
              color: AppColor.red,
            ),

            //  const Icon(
            //   CupertinoIcons.briefcase,
            //   color: AppColor.red,
            // ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            title,
            style: txtSmall,
          ),
        ],
      ),
    );
  }
}
