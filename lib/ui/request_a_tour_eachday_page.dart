import 'package:flutter/cupertino.dart';
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
  final pickStartTimeTEC = TextEditingController();
  final pickEndTimeTEC = TextEditingController();

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);
  // bool _isChecked = false;
  bool _isMonday = false;
  bool _isTuesday = false;
  bool _isWednesday = false;
  bool _isThursday = true;
  bool _isFriday = true;
  bool _isSaturday = true;
  bool _isSunday = true;

  // show time picker method
  void _showTimeStartPicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
        final time = _timeOfDay.format(context).toString();
        pickStartTimeTEC.text = time;
      });
    });
  }

  void _showTimeEndPicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
        final time = _timeOfDay.format(context).toString();
        pickEndTimeTEC.text = time;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pickEndTimeTEC.dispose();
    pickStartTimeTEC.dispose();
    super.dispose();
  }

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
                  labelStyle: txtMedium.copyWith(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(
                  label: const Text('Mobile Number'),
                  labelStyle: txtMedium.copyWith(),
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
                  fontSize: 11,
                  color: Colors.grey,
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
                      side: const BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: AppColor.red,
                    value: _isMonday,
                    onChanged: (value) {
                      setState(() {
                        _isMonday = !_isMonday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isTuesday,
                    onChanged: (value) {
                      setState(() {
                        _isTuesday = !_isTuesday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () {},
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isWednesday,
                    onChanged: (value) {
                      setState(() {
                        _isWednesday = !_isWednesday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isThursday,
                    onChanged: (value) {
                      setState(() {
                        _isThursday = !_isThursday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isFriday,
                    onChanged: (value) {
                      setState(() {
                        _isFriday = !_isFriday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isSaturday,
                    onChanged: (value) {
                      setState(() {
                        _isSaturday = !_isSaturday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
                    value: _isSunday,
                    onChanged: (value) {
                      setState(() {
                        _isSunday = !_isSunday;
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeStartPicker();
                      },
                      controller: pickStartTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('Start from'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickStartTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      onTap: () async {
                        _showTimeEndPicker();
                      },
                      controller: pickEndTimeTEC,
                      decoration: inputDecoration.copyWith(
                        label: const Text('End in'),
                        suffixIcon: Icon(CupertinoIcons.clock,
                            color: pickEndTimeTEC.text.isEmpty
                                ? Colors.grey
                                : Colors.black),
                        labelStyle: txtMedium.copyWith(),
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
