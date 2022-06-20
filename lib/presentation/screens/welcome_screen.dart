import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/screens/username_signin.dart';
import 'package:judy_flutter_ui/utill/images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Images.logo),
            Column(
              children: [
                CustomRoundedButton(
                  buttonText: "Personal",
                  onpressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UsernameSigninScreen(),
                        ));
                    // await showBottomPermissionSheet(context);
                  },
                  linearGradient: const LinearGradient(colors: [
                    Color(0xff3F3A58),
                    Color(0xff3F3A58),
                  ]),
                ),
                CustomRoundedButton(
                  buttonText: "Business",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UsernameSigninScreen(),
                        ));
                  },
                  linearGradient: const LinearGradient(colors: [
                    Color(0xff3F3A58),
                    Color(0xff3F3A58),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
