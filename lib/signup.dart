import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'components/custom_textfield.dart';
import 'components/my_button.dart';
import 'home_page.dart'; // Import the HomePage widget

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    void validateForm() async {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Please enter your email and password.',
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else {
        setState(() {
          _isSubmitting = true;
        });

        try {
          UserCredential userCredential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          );

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Sign up successful!',
                style: TextStyle(color: Colors.green),
              ),
            ),
          );

          // Navigate to HomePage on successful sign-up
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        } on FirebaseAuthException catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.message ?? 'An error occurred.',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        } finally {
          setState(() {
            _isSubmitting = false;
          });
        }
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
                child: Text(
                  'Please Sign Up',
                  style: GoogleFonts.sora(
                      color: const Color(0xff1F5460),
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                pdBool: false,
                hintText: 'enter your email',
                icon: Icons.email,
                controller: emailController,
                obscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                pdBool: true,
                hintText: 'enter your password',
                icon: Icons.lock,
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 80,
              ),
              MyButton(
                color: const Color(0xff659A9D),
                text: _isSubmitting ? '' : "sign up",
                method: validateForm,
                child: _isSubmitting
                    ? const Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : null,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
