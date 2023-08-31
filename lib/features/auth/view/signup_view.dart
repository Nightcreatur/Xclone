import 'package:animations/common/rounded_button.dart';
import 'package:animations/constants/ui_constants.dart';
import 'package:animations/features/auth/controller/textfield.dart';
import 'package:animations/features/auth/view/login_view.dart';
import 'package:animations/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedButton(
                    onTap: () {},
                    lable: 'Done',
                    bgColor: Pallete.blueColor,
                    textColor: Pallete.backgroundColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                      text: "Already have an account?",
                      style: const TextStyle(fontSize: 16),
                      children: [
                        TextSpan(
                            text: ' Login ',
                            style: const TextStyle(
                                color: Pallete.blueColor, fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginView()),
                                );
                              })
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
