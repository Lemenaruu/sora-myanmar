import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants/widgets_constants.dart';

class HomeWifiRequestForm1Page extends ConsumerStatefulWidget {
  const HomeWifiRequestForm1Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeWifiRequestFormPageState();
}

class _HomeWifiRequestFormPageState
    extends ConsumerState<HomeWifiRequestForm1Page> {
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
        title: const Text('Home Wifi Request Form'),
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 35,
                  child: OutlinedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svgs/basket_outlined.svg',
                      color: AppColor.red,
                      height: 20,
                    ),
                    label: const Text(
                      'Performance Pro Internet Pack',
                      style: TextStyle(
                        color: AppColor.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Name(English)'),
                  labelStyle: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Name(Katakana)'),
                  labelStyle: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
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
                  labelStyle: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        pickDate();
                      },
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey.shade600,
                      )),
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
                        child: SvgPicture.asset(
                          'assets/svgs/gallery.svg',
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        bottom: 20,
                        child: SizedBox(
                          width: size.width * 0.42,
                          child: Text(
                            'Add Photo(Front)',
                            style: txtMedium.copyWith(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
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
                        child: SvgPicture.asset(
                          'assets/svgs/gallery.svg',
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        bottom: 20,
                        child: SizedBox(
                          width: size.width * 0.42,
                          child: Text(
                            'Add Photo(Back)',
                            style: txtMedium.copyWith(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
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
                    child: SvgPicture.asset(
                      'assets/svgs/gallery.svg',
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.2,
                    // right: size.width * 0.35,
                    bottom: 20,
                    child: SizedBox(
                      width: size.width,
                      child: Text(
                        'Add Photo(First page with photo)',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
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
                    child: SvgPicture.asset(
                      'assets/svgs/gallery.svg',
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.3,
                    // right: size.width * 0.35,
                    bottom: 20,
                    child: SizedBox(
                      width: size.width * 0.42,
                      child: Text(
                        'Add Photo(First page)',
                        style: txtMedium.copyWith(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
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
                  context.pushNamed(homeWifiRequestForm2);
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
