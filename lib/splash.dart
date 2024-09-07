import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/my_button.dart';
import 'signup.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1F5460),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: EdgeInsets.fromLTRB(mq.size.width * 0.1,
              //       mq.size.width * 0.2, mq.size.width * 0.1, 20),
              //   child: SizedBox(
              //       height: 300,
              //       width: 300,
              //       child: Image.asset('assets/thoughts.png')),
              // ),
              const SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  'Let’s\nget started',
                  style: GoogleFonts.sora(
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // MyButton(
              //   color: const Color(0xff659A9D),
              //   text: ' Log in',
              //   method: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => const LoginPage()),
              //     );
              //   },
              // ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                color: const Color(0xffD5E7D4),
                text: ' Sign Up',
                method: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
