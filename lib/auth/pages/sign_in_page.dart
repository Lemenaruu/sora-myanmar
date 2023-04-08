import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/core/utils.dart';
import 'package:sora_myanmar/providers/login_provider.dart';

import '../../constants/widgets_constants.dart';
import '../../providers/route_provider.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isChecked = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(emailController.text);
    final loginState = ref.watch(loginProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Welcome back, New Products are arriving!',
                style: txtMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              TextFormField(
                controller: emailController,
                decoration: inputDecoration.copyWith(
                    labelText: 'Mobile number or email', labelStyle: txtMedium),
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
              TextFormField(
                controller: passwordController,
                decoration: inputDecoration.copyWith(
                  labelText: 'Password',
                  labelStyle: txtMedium,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Your password must have at least 8 characters';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: CheckboxListTile(
                      contentPadding: EdgeInsets.zero,

                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isChecked,
                      checkColor: Colors.white,
                      // selectedTileColor: Colors.amberAccent,
                      // tileColor: Colors.amber,
                      activeColor: AppColor.red,
                      checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      title: const Text(
                        'Remember me',
                        style: txtMedium,
                      ),
                    ),
                  ),
                  const Text(
                    'Forgot password?',
                    style: txtMedium,
                  ),
                ],
              ),
              OutlinedButton(
                style: buttonStyleWithBackgroundColor,
                onPressed: loginState.isLoading
                    ? null
                    : () async {
                        if (_formKey.currentState!.validate() == true) {
                          final isSuccess = await ref
                              .read(loginProvider.notifier)
                              .loginWithEmail(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                          if (isSuccess == true && context.mounted) {
                            context.goNamed(home);
                            showSnackBar(context, 'Login Successfully');
                          } else {
                            showSnackBar(context,
                                'Your email or password does not match');
                            // emailController.clear();
                            // passwordController.clear();
                          }
                        }
                      },
                child: loginState.isLoading
                    ? const CircularProgressIndicator()
                    : const Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),
              ),
              const Align(alignment: Alignment.center, child: Text('or')),
              OutlinedButton.icon(
                style: buttonStyleWithBordersideColor,
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  size: 20,
                  color: AppColor.red,
                ),
                label: Text('Continue With Google',
                    style: txtMedium.copyWith(
                        fontWeight: FontWeight.bold, color: AppColor.red)),
              ),
              OutlinedButton.icon(
                style: buttonStyleWithBordersideColor.copyWith(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.blueAccent),
                  ),
                ),
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.facebookF,
                  size: 20,
                ),
                label: Text(
                  'Continue With Facebook',
                  style: txtMedium.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: txtMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(signUp);
                    },
                    child: const Text(
                      " Sign Up",
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
        ),
      ),
    );
  }
}
