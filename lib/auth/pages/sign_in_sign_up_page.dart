import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/constants/widgets_constants.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

// import 'package:sora_myanmar/router.dart';

class SignInSignUpPage extends StatelessWidget {
  const SignInSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Sign up to get started and experience',
                        style: txtMedium,
                      ),
                    ),
                    Text(
                      'great shopping deals',
                      style: txtMedium,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  OutlinedButton(
                    style: buttonStyleWithBordersideColor,
                    onPressed: () {
                      context.pushNamed(signIn);
                    },
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.red,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  OutlinedButton(
                    style: buttonStyleWithBackgroundColor,
                    onPressed: () {},
                    child: const Text(
                      'CREATE AN ACCOUNT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
