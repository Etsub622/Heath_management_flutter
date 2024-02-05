import 'package:flutter/material.dart';
import 'customTextField.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.lightBlue,
                child: Icon(
                  Icons.person,
                  size: 38,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Create your account?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 28,
              ),
              Form(
                child: Column(
                  children: [
                    CustomTextField(
                      controller: widget._nameController,
                      hintText: 'Full name',
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: widget._emailController,
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: widget._passwordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: widget._confirmPasswordController,
                      hintText: 'Confirm password',
                    ),
                    const SizedBox(height: 26),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60.0),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }),
                            );
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
