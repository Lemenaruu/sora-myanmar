import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../constants/widgets_constants.dart';

class OrderStatusLevelWidget extends StatefulWidget {
  const OrderStatusLevelWidget({
    super.key,
  });

  @override
  State<OrderStatusLevelWidget> createState() => _OrderStatusLevelWidgetState();
}

class _OrderStatusLevelWidgetState extends State<OrderStatusLevelWidget> {
  bool _isPending = true;

  bool _isOrderConfirmed = true;

  bool _isPackaging = false;

  bool _isDelivery = false;

  bool _isComplete = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Order Status',
          style: txtMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          '#119977351',
          style: txtMedium.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CheckBoxWidget(
              value: _isPending,
              onChanged: (value) {
                setState(() {
                  _isPending = value!;
                });
              },
            ),
            const DottedLineWidget(),
            CheckBoxWidget(
              value: _isOrderConfirmed,
              onChanged: (value) {
                setState(() {
                  _isOrderConfirmed = value!;
                });
              },
            ),
            const DottedLineWidget(),
            CheckBoxWidget(
              value: _isPackaging,
              onChanged: (value) {
                setState(() {
                  _isPackaging = value!;
                });
              },
            ),
            const DottedLineWidget(),
            CheckBoxWidget(
              value: _isDelivery,
              onChanged: (value) {
                setState(() {
                  _isDelivery = value!;
                });
              },
            ),
            const DottedLineWidget(),
            CheckBoxWidget(
              value: _isComplete,
              onChanged: (value) {
                setState(() {
                  _isComplete = value!;
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.16,
              child: Text(
                'Pending',
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: _isPending ? AppColor.red : Colors.black,
                  fontSize: 8,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: Text(
                'Order Confirmed',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: _isOrderConfirmed ? AppColor.red : Colors.black,
                  fontSize: 8,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: Text(
                'Packaging',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 8,
                  color: _isPackaging ? AppColor.red : Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: Text(
                'Delivery',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 8,
                  color: _isDelivery ? AppColor.red : Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: Text(
                'Complete',
                textAlign: TextAlign.right,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: _isComplete ? AppColor.red : Colors.black,
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DottedLineWidget extends StatelessWidget {
  const DottedLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DottedLine(
      dashColor: AppColor.red,
      lineThickness: 2,
      dashLength: 2,
      lineLength: 26,
      dashRadius: 10,
    );
  }
}
