import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/widgets_constants.dart';

enum Gender { male, female }

class ProfileSettingPage extends StatefulWidget {
  const ProfileSettingPage({super.key});

  @override
  State<ProfileSettingPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<ProfileSettingPage> {
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
            onPressed: () {
              context.go('/profile');
              // context.pushNamed(profile);
            }),
        title: const Text(
          'Profile Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 20,
          ),
          child: Column(
            children: [
              file == null
                  ? const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                    )
                  : CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      backgroundImage: FileImage(file!),
                    ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: AppColor.red,
                    ),
                  ),
                ),
                onPressed: () {
                  pickImage();
                },
                child: const Text(
                  'Upload Image',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColor.red,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Name'),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Email'),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                "assets/svgs/actions-settings.svg",
                width: 100,
                height: 100,
                color: AppColor.red,
              ),
              IntlPhoneField(
                keyboardType: TextInputType.number,
                decoration: inputDecoration.copyWith(
                  label: const Text('Mobile Number or Email'),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                initialCountryCode: 'MM',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              //
              TextFormField(
                controller: dateController,
                decoration: inputDecoration.copyWith(
                  label: const Text('Birthday'),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
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
              // suffixIcon: IconButton(
              //         onPressed: () {
              //           pickDate();
              //         },
              //         icon: const FaIcon(
              //           FontAwesomeIcons.calendarAlt,
              //           color: Colors.black,
              //         )),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<Gender>(
                        activeColor: AppColor.red,
                        // fillColor: MaterialStateProperty.all(
                        //   Colors.black,
                        // ),

                        value: Gender.male,
                        groupValue: selectedRadio,
                        onChanged: (Gender? value) {
                          setState(() {
                            selectedRadio = value!;
                          });
                        },
                      ),
                      const Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<Gender>(
                        // fillColor: MaterialStateProperty.all(
                        //   Colors.black,
                        // ),

                        activeColor: AppColor.red,
                        value: Gender.female,
                        groupValue: selectedRadio,
                        onChanged: (Gender? value) {
                          setState(() {
                            selectedRadio = value!;
                          });
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
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
      ),
    );
  }
}
