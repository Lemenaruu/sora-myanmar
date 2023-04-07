import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../constants/widgets_constants.dart';
import '../constants/string_constants.dart';

enum Gender { male, female }

class CardInformationPage extends StatefulWidget {
  const CardInformationPage({super.key});

  @override
  State<CardInformationPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<CardInformationPage> {
  final dateController = TextEditingController();
  File? file = File("");

  void pickImage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      setState(() {
        file = File(result.files.single.path ?? " ");
      });
    }
  }

  void pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate = DateFormat("dd-MM-yyyy").format(pickedDate);

      setState(() {
        dateController.text = formattedDate.toString();
      });
    }
  }

  Gender selectedRadio = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Card Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                label: const Text('Card Number'),
                labelStyle: txtMedium.copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  label: const Text('Cardholder Name'),
                  labelStyle: txtMedium.copyWith(color: Colors.grey)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: dateController,
              // initialValue: 'Day - Month - Year',
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                label: const Text('MM/YY'),
                labelStyle: txtMedium.copyWith(color: Colors.grey),
                suffixIcon: IconButton(
                  onPressed: () {
                    pickDate();
                  },
                  icon: SvgPicture.asset(
                    SvgPic.calendar,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  label: const Text('CVV Number'),
                  labelStyle: txtMedium.copyWith(color: Colors.grey)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Save Card's Information",
                  style: txtMedium,
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
            const Spacer(),
            OutlinedButton(
              style: buttonStyleWithBackgroundColor,
              onPressed: () {},
              child: const Text(
                'SAVE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
