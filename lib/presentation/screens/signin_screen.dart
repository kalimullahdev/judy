import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//email_signin_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//phone_signin_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//username_signin.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 26.0,
          vertical: 16,
        ),
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Sign '),
                TextSpan(
                    text: 'In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C42FF),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: [
                const TextSpan(
                  text: 'Select the best way to ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA1AFC3),
                  ),
                ),
                TextSpan(
                  text: 'sign in to your account',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff051D3F),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Column(
            children: [
              ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UsernameSigninScreen(),
                  ),
                ),
                leading: const Icon(
                  Icons.person,
                  color: Color(0xff051D3F),
                ),
                title: const Text(
                  "Use Username",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailSigninScreen(),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.email,
                  color: Color(0xff051D3F),
                ),
                title: const Text(
                  "Use Email address",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneScreenSignin(),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.phone,
                  color: Color(0xff051D3F),
                ),
                title: const Text(
                  "Use Phone Number",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Color(0xff051D3F),
                ),
                title: Text(
                  "Use The OTP Code",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.qr_code,
                  color: Color(0xff051D3F),
                ),
                title: Text(
                  "Use QR Code",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Color(0xff051D3F),
                ),
                title: Text(
                  " Register For A New Account",
                  style: TextStyle(
                    color: Color(0xff051D3F),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff051D3F),
                ),
              ),
            ],
          )
      
        ],
      ),
    );
  }
}
