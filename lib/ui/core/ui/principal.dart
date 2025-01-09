import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 16.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Principal"),
                    ElevatedButton(
                      child: const Text("Sign In"),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute<void>(builder: (BuildContext context) => const SignInScreen()),
                          ModalRoute.withName('/'),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Register"),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute<void>(builder: (BuildContext context) => const RegisterScreen()),
                          ModalRoute.withName('/'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
