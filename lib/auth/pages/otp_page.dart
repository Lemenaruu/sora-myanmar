import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: true,
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 246, 221, 215),
                  radius: 70,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: const Color.fromARGB(255, 250, 207, 196),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 50,
                      child: SvgPicture.asset(
                        "assets/svgs/otp.svg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Flexible(
                  child: Text(
                    'A 5-Digit PIN has been sent to your Mobile 0966660392. Enter it below to continue',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Pinput(
                  length: 5,
                  controller: codeController,
                  onCompleted: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing verify...'),
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,

                  /// ------------
                  /// With Validator
                  /// Auto validate after user tap on keyboard done button, or completes Pinput
                  // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      if (value.length != 5) {
                        return "You need to enter otp code.";
                      } else {
                        return null;
                      }
                    }
                    return "You need to enter otp code";
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn't received the PIN? ",
                      style: TextStyle(
                        fontFamily: 'poppin',
                        // decoration: TextDecoration.underline,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " RESEND",
                      style: TextStyle(
                        fontFamily: 'poppin',
                        decoration: TextDecoration.underline,
                        color: AppColor.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          OutlinedButton(
            style: buttonStyleWithBackgroundColor,
            onPressed: () {},
            child: const Text(
              'CONTINUE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 60,
  textStyle: const TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: Colors.grey.shade300,
    // border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.white,
  ),
);
