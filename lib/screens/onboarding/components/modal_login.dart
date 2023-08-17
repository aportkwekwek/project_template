import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controllers/login_controller.dart';
import 'modal_login_form.dart';

class ModalLogin extends StatefulWidget {
  const ModalLogin({
    super.key,
  });

  @override
  State<ModalLogin> createState() => _ModalLoginState();
}

class _ModalLoginState extends State<ModalLogin> {
  LoginController loginAuthenticateController = LoginController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: screenHeight * 0.75,
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 32,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.90),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Sign In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Minim ullamco occaecat consectetur proident duis aute. Deserunt amet anim ex id quis proident incididunt.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 20.0),
                ModalLoginForm(
                  emailController: loginAuthenticateController.emailController,
                  passwordController:
                      loginAuthenticateController.passwordController,
                  buttonTap: loginAuthenticateController.googleAuthenticate,
                ),
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text('Sign in / Sign Up'),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 70,
                      width: 70,
                    ),
                    SvgPicture.asset(
                      "assets/icons/google.svg",
                      height: 70,
                      width: 70,
                    ),
                    const Icon(
                      Icons.apple_outlined,
                      size: 75,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
