import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/providers/register_provider.dart';
import 'package:sora_myanmar/providers/route_provider.dart';

import '../../constants/widgets_constants.dart';
import '../../core/utils.dart';

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
    
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registerState = ref.watch(registerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      controller: nameController,
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

                    TextFormField(
                      controller: emailController,
                      decoration: inputDecoration.copyWith(
                        hintText: 'Mobile number or email',
                      ),
                      // decoration: const InputDecoration(
                      //   hintText: 'Mobile number or email',
                      //   hintStyle: txtMedium,
                      // ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter mobile number or email';
                        } else if (RegExp(r"^([0-9])").hasMatch(value)) {
                          if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                              .hasMatch(value)) {
                            return 'Please enter valid phone number';
                          }
                          return null;
                        } else if (RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$")
                            .hasMatch(value)) {
                          return null;
                        } else {
                          return 'Please enter a valid email';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // IntlPhoneField(
                    //   controller: emailController,
                    //   decoration: inputDecoration.copyWith(
                    //     contentPadding:
                    //         const EdgeInsets.symmetric(vertical: 15),
                    //     labelText: 'Mobile number or email',
                    //     labelStyle: txtMedium,
                    //   ),
                    //   initialCountryCode: 'MM',
                    //   onChanged: (phone) {
                    //     print(phone);
                    //   },
                    // ),
                    TextFormField(
                      controller: passwordController,
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
                    onPressed: registerState.isLoading
                        ? null
                        : () async {
                            if (_formKey.currentState!.validate() == true) {
                              final user = await ref
                                  .read(registerProvider.notifier)
                                  .register(
                                    name: nameController.text.trim(),
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                              print(user?.status);
                              if (user?.success == true && context.mounted) {
                                context.goNamed(home);
                                showSnackBar(context, user!.message.toString());
                              } else {
                                showSnackBar(
                                    context, user!.message.toString());
                              }
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
