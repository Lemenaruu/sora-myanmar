import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../constants/widgets_constants.dart';

class RentForm3Page extends ConsumerStatefulWidget {
  const RentForm3Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RentForm3PageState();
}

class _RentForm3PageState extends ConsumerState<RentForm3Page> {
  final _dateController = TextEditingController();
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
        _dateController.text = formattedDate.toString();
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
                    backgroundColor: AppColor.red,
                    radius: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
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
                    backgroundColor: AppColor.red,
                    radius: 10,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: txtMedium.copyWith(
                          color: Colors.white,
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
                'Contact Person(Japan)',
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
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
                  label: const Text('Mobile Number'),
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
                controller: _dateController,
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
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Address'),
                  labelStyle: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Text(
                'Contact Person(Myanmar)',
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
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
                  label: const Text('Mobile Number'),
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
                controller: _dateController,
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
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Address'),
                  labelStyle: txtMedium.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              OutlinedButton(
                  style: buttonStyleWithBackgroundColor,
                  onPressed: () {},
                  child: const Text(
                    'RENT NOW',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
