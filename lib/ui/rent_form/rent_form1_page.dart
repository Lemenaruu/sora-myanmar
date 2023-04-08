import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants/string_constants.dart';

class RentForm1Page extends ConsumerStatefulWidget {
  const RentForm1Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RentFormPageState();
}

class _RentFormPageState extends ConsumerState<RentForm1Page> {
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.red,
                    radius: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: txtMedium.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink.shade50,
                    radius: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: txtMedium.copyWith(
                          color: AppColor.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink.shade50,
                    radius: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: txtMedium.copyWith(
                          color: AppColor.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Name(English)'),
                  labelStyle: txtMedium.copyWith(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Name(Katakana)'),
                  labelStyle: txtMedium.copyWith(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //
              TextFormField(
                controller: dateController,
                decoration: inputDecoration.copyWith(
                  label: const Text('Birthday'),
                  labelStyle: txtMedium.copyWith(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      pickDate();
                    },
                    icon: SvgPicture.asset(SvgPic.calendar),
                  ),
                ),
                // initialValue: 'Day - Month - Year',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Residence Card',
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        height: size.height * 0.18,
                        width: size.width * 0.45,
                      ),
                      Positioned(
                        left: 30,
                        right: 30,
                        top: 40,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              SvgPic.gallery,
                              color: Colors.grey.shade400,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add Photo(Front)',
                              textAlign: TextAlign.center,
                              style: txtMedium.copyWith(
                                color: Colors.grey.shade400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        height: size.height * 0.18,
                        width: size.width * 0.45,
                      ),
                      Positioned(
                        left: 30,
                        right: 30,
                        top: 40,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              SvgPic.gallery,
                              color: Colors.grey.shade400,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add Photo(Back)',
                              textAlign: TextAlign.center,
                              style: txtMedium.copyWith(
                                color: Colors.grey.shade400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Passport',
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    height: size.height * 0.18,
                    width: size.width,
                  ),
                  Positioned(
                    left: 30,
                    right: 30,
                    top: 40,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/gallery.svg',
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add Photo(First page with photo)',
                          textAlign: TextAlign.center,
                          style: txtMedium.copyWith(
                            color: Colors.grey.shade400,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Bank Book',
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    height: size.height * 0.18,
                    width: size.width,
                  ),
                  Positioned(
                    left: 30,
                    right: 30,
                    top: 40,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/gallery.svg',
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add Photo(First page)',
                          textAlign: TextAlign.center,
                          style: txtMedium.copyWith(
                            color: Colors.grey.shade400,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: buttonStyleWithBackgroundColor,
                onPressed: () {
                  context.pushNamed(rentForm2);
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
