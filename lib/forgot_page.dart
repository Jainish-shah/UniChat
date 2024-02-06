import 'package:flutter/material.dart';
import 'package:unichat/signup_page.dart';

  class forgot_page extends StatefulWidget {
  const forgot_page({super.key});

  @override
  State<forgot_page> createState() => _forgot_pageState();
}

class _forgot_pageState extends State<forgot_page> {

  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _sendPasswordResetEmail() {
    // Add your email sending logic here
    String email = _emailController.text;
    print('Send password reset link to $email');
    // here there is use of service like Firebase Auth to send the password reset email
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password?'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Send Password Reset Email'),
              onPressed: _sendPasswordResetEmail,
            ),
          ],
        ),
      ),
    );
  }
}
