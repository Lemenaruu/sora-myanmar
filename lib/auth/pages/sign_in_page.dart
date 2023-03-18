import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sora_myanmar/core/loader.dart';
import 'package:sora_myanmar/providers/auth_provider.dart';

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
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void loginWithEmail() {
    ref.read(authControllerProvider.notifier).loginWithEmail(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        context: context);
    // context.goNamed(home);
  }

  @override
  Widget build(BuildContext context) {
    print(emailController.text);
    final isLoading = ref.watch(authControllerProvider);
    return isLoading
        ? const Loader()
        : Scaffold(
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        hintText: 'Mobile number or email',
                      ),
                      // decoration: const InputDecoration(
                      //   hintText: 'Mobile number or email',
                      //   hintStyle: txtMedium,
                      // ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: inputDecoration.copyWith(
                        hintText: 'Password',
                      ),
                      // decoration: const InputDecoration(
                      //   hintText: 'Password',
                      //   hintStyle: txtMedium,
                      // ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          loginWithEmail();

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
                              fontWeight: FontWeight.bold,
                              color: AppColor.red)),
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
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
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
