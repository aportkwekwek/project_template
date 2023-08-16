import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/screens/onboarding/components/modal_login.dart';
import 'components/buttons/animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // const RiveAnimation.asset(
            //     "assets/RiveAssets/Onboarding_Animation.riv"),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 30,
                  sigmaY: 30,
                ),
                child: const SizedBox(),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "Lorem Ullamco et Dolor",
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'Poppins',
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Duis ea ullamco mollit consectetur aute consectetur Lorem esse laborum nostrud velit ea sunt. Irure excepteur deserunt commodo consectetur proident enim nostrud culpa consectetur elit elit exercitation.",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 15,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    AnimatedBtn(
                      // btnAnimationController: _btnAnimationController,
                      press: () {
                        // _btnAnimationController.isActive = true;
                        showGeneralDialog(
                            barrierDismissible: true,
                            barrierLabel: "Sign In",
                            context: context,
                            pageBuilder: (context, _, __) => ModalLogin());
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
