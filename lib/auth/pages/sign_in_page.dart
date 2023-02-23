import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Welcome back, New Products are arriving!',
              style: TextStyle(
                fontSize: 15,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Mobile number or email',
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,

                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    checkColor: Colors.white,
                    // selectedTileColor: Colors.amberAccent,
                    // tileColor: Colors.amber,
                    activeColor: Colors.black,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    title: const Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                shadowColor: Colors.grey,
                padding: const EdgeInsets.symmetric(vertical: 20),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(4.0)),
                minimumSize: Size(
                  MediaQuery.of(context).size.width,
                  50,
                ), //////// HERE
              ),
              onPressed: () {},
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14),
              ),
            ),
            const Align(alignment: Alignment.center, child: Text('or')),
            OutlinedButton.icon(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(
                    MediaQuery.of(context).size.width,
                    50,
                  ),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(color: AppColor.red),
                ),
              ),
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.google,
                size: 20,
                color: AppColor.red,
              ),
              label: const Text(
                'Continue With Google',
                style: TextStyle(
                  color: AppColor.red,
                ),
              ),
            ),
            OutlinedButton.icon(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(
                    MediaQuery.of(context).size.width,
                    50,
                  ),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.blueAccent),
                ),
              ),
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.facebookF,
                size: 20,
              ),
              label: const Text(
                'Continue With Facebook',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(color: AppColor.red),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
    );
  }
}



//  ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 // foregroundColor: Colors.white,
//                 backgroundColor: Colors.white,
//                 shadowColor: Colors.grey,
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                     side: const BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.circular(4.0)),
//                 minimumSize: Size(
//                   MediaQuery.of(context).size.width,
//                   50,
//                 ), //////// HERE
//               ),
//               onPressed: () {},
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   FaIcon(
//                     FontAwesomeIcons.google,
//                     color: AppColor.red,
//                     size: 21,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     'Continue With Google',
//                     style: TextStyle(
//                       color: AppColor.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//  ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 // foregroundColor: Colors.white,
//                 backgroundColor: Colors.white,
//                 shadowColor: Colors.grey,
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                     side: const BorderSide(
//                       color: Colors.blueAccent,
//                     ),
//                     borderRadius: BorderRadius.circular(4.0)),
//                 minimumSize: Size(
//                   MediaQuery.of(context).size.width,
//                   50,
//                 ), //////// HERE
//               ),
//               onPressed: () {},
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Icon(
//                     Icons.facebook_outlined,
//                     color: Colors.blueAccent,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     'Continue With Facebook',
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 Text(
//                   "Don't have an account",
//                 ),
//                 Text(
//                   "Sign Up",
//                   style: TextStyle(color: AppColor.red),
//                 ),
//               ],
//             ),
