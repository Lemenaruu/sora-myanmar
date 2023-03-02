import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';

class ProfileSettingPage extends StatelessWidget {
  const ProfileSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/profile');
              // context.pushNamed(profile);
            }),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: AppColor.red,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Upload Image',
              style: TextStyle(
                fontSize: 12,
                color: AppColor.red,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              label: Text('Name'),
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              label: Text('Email'),
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              label: const Text('Mobile number or email'),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.calendar,
                    color: Colors.black,
                  )),
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              label: Text('Name'),
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const Text(
            'Gender',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
