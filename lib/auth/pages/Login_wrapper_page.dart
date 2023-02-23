import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginWrapperPage extends StatefulWidget {
  const LoginWrapperPage({super.key});

  @override
  State<LoginWrapperPage> createState() => _LoginWrapperPageState();
}

class _LoginWrapperPageState extends State<LoginWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return Text('data');
    // AutoRouter.declarative( // use AutoRouter.declarative  
    //   routes: (_, __) { 
    //     // Declaratively define your routes here
    //     return [
    //       EmailRoute(onNext: (result) {
    //         setState(() {
    //             email: result;
    //         });
    //       }),
    //       if (email.isNotEmpty) PasswordRoute(onNext: (result) async {
    //         try {
    //           // validate the email and password
    //           await validateEmailAndPassword(email, result)
    //           widget.onLogin(true);
    //         } catch (e) {
    //           // do something with the error
    //         }
    //       }),
    //     ];
    //   },
    // ); 
  }
}