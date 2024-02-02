import 'package:flutter/material.dart';
import 'package:patient/BottomNav.dart';
import 'package:patient/customTextField.dart';
import 'package:patient/forgotPassword.dart';
import 'package:patient/signup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }
}

class _LoginPageState extends State<LoginPage> {
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
                height: 25,
              ),
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
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
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return ForgotPassword();
                            }),
                          );
                        },
                        child: const Text(
                          'Forgot password?',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return BottomNav();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
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
                                return SignupPage();
                              }),
                            );
                          },
                          child: const Text(
                            'Sign up',
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
