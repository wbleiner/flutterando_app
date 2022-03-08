// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class SignUpManageExpenses extends StatelessWidget {
  const SignUpManageExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Image.asset(
              'assets/images/images_mockups/logo.png',
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              child: const Text(
                'Get your Money Under Control',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              child: const Text(
                'Manage your expenses Seamlessly',
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    197,
                    195,
                    195,
                  ),
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 7.55),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5E5CE5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Sign Up with Email ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7.5),
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/images_mockups/google.png',
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
