import 'package:flutter/material.dart';
import 'customTextField.dart';
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
  }
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.lightBlue,
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return LoginPage();
              }),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.telegram,
                size: 50,
                color: Colors.lightBlue,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Forgot password?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Enter your registered password to send you\n password reset.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: widget._emailController,
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60.0),
                      ),
                      child: const Text(
                        'Send',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600),
                      ),
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
