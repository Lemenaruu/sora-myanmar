import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/widgets_constants.dart';

enum Type {
  daily,
  eachDay,
}

class RequestATourEachdayPage extends ConsumerStatefulWidget {
  const RequestATourEachdayPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RequestATourEachdayPageState();
}

class _RequestATourEachdayPageState
    extends ConsumerState<RequestATourEachdayPage> {
  Type selectedRadio = Type.eachDay;
  final timeinput = TextEditingController();
  bool _isChecked = false;
  TimeOfDay time = const TimeOfDay(hour: 10, minute: 00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request a Tour'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Contact Name'),
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
              Text(
                "Pick up time you're available",
                style: txtMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Mr.John will follow up and contact you.",
                style: txtMedium.copyWith(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<Type>(
                        activeColor: AppColor.red,
                        // fillColor: MaterialStateProperty.all(
                        //   Colors.black,
                        // ),

                        value: Type.daily,
                        groupValue: selectedRadio,
                        onChanged: (Type? value) {
                          setState(() {
                            selectedRadio = value!;
                          });
                        },
                      ),
                      Text(
                        'Daily',
                        style: txtMedium.copyWith(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<Type>(
                        activeColor: AppColor.red,
                        // fillColor: MaterialStateProperty.all(
                        //   Colors.black,
                        // ),

                        value: Type.eachDay,
                        groupValue: selectedRadio,
                        onChanged: (Type? value) {
                          setState(() {
                            selectedRadio = value!;
                          });
                        },
                      ),
                      Text(
                        'Each Day',
                        style: txtMedium.copyWith(),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Monday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Tuesday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Wednesday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Thursday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Friday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Saturday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                  Text(
                    'Sunday',
                    style: txtMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      onTap: () async {},
                      controller: timeinput,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(Icons.watch_later_outlined,
                            color: timeinput.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(
                          color: Colors.grey,
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
                onPressed: () {},
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
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
