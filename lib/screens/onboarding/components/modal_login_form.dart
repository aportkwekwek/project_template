import 'package:flutter/material.dart';
import 'package:rive_animation/screens/onboarding/components/buttons/project_button.dart';

class ModalLoginForm extends StatefulWidget {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late Function()? buttonTap;

  ModalLoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.buttonTap,
  });

  @override
  State<ModalLoginForm> createState() => _ModalLoginFormState();
}

class _ModalLoginFormState extends State<ModalLoginForm> {
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
            controller: widget.emailController,
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
            controller: widget.passwordController,
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
          Center(
            child: ProjectButton(
              buttonTap: widget.buttonTap,
              buttonLabel: 'Login',
            ),
          ),
        ],
      ),
    ));
  }
}
