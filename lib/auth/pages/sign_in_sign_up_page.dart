import 'package:flutter/material.dart';

import 'package:sora_myanmar/features/home/screens/home_screen.dart';
import 'package:sora_myanmar/router_a.dart';

class SignInSignUpPage extends StatelessWidget {
  const SignInSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Sign up to get started and experience',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'great shopping deals',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(4.0)),
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          50,
                        ), //////// HERE
                      ),
                      onPressed: () {
                        
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shadowColor: Colors.grey,
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(4.0)),
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          50,
                        ), //////// HERE
                      ),
                      onPressed: () {},
                      child: const Text(
                        'CREATE AN ACCOUNT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 1.5),
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: const Center(
                    //     child: Text(
                    //       'SIGN IN',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.red,
                    //           fontSize: 16),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     border: Border.all(color: Colors.red, width: 1.5),
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: const Center(
                    //     child: Text(
                    //       'CREATE AN ACCOUNT',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.white,
                    //           fontSize: 16),
                    //     ),
                    //   ),
                    // ),
