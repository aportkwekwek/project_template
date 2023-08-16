import 'package:flutter/material.dart';
import 'package:rive_animation/screens/onboarding/components/buttons/project_button.dart';

import 'buttons/animated_btn.dart';

class ModalLogin_Form extends StatelessWidget {
  const ModalLogin_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Password',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: ProjectButton(
              buttonLabel: 'Login',
            ),
          ),
        ],
      ),
    ));
  }
}
