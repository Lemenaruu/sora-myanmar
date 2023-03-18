import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sora_myanmar/core/loader.dart';
import 'package:sora_myanmar/providers/auth_provider.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants/widgets_constants.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _isChecked = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUp() {
    ref.read(authControllerProvider.notifier).signUp(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Loader()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Create your account',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Shop with us, see more opportunity products!',
                            style: txtMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // controller: emailController,
                            decoration: inputDecoration.copyWith(
                              hintText: 'Username',
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          IntlPhoneField(
                            decoration: inputDecoration.copyWith(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 15),
                              labelText: 'Mobile number or email',
                              labelStyle: txtMedium,
                            ),
                            initialCountryCode: 'MM',
                            onChanged: (phone) {
                              print(phone);
                            },
                          ),
                          TextFormField(
                            obscureText: _showPassword,
                            // controller: passwordController,
                            decoration: inputDecoration.copyWith(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                icon: Icon(
                                  !_showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColor.red,
                                ),
                              ),
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Flexible(
                            child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: _isChecked,
                              checkColor: Colors.white,
                              activeColor: AppColor.red,
                              checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                              title: Text(
                                'I accept the policy and terms',
                                style: txtMedium.copyWith(
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                          style: buttonStyleWithBackgroundColor,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              signUp();

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing login...'),
                                  behavior: SnackBarBehavior.floating,
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'CREATE AN ACCOUNT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: txtMedium,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(signIn);
                              },
                              child: const Text(
                                " Sign In",
                                style: TextStyle(
                                  color: AppColor.red,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
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
