import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//home_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//signin_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/terms_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final textController = TextEditingController();
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
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_LARGE,
                  vertical: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Sign '),
                      TextSpan(
                          text: 'Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorResources.blueColor,
                          )),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 40.0,
                  left: 20,
                  top: 12,
                  bottom: 12,
                ),
                child: Text(
                  "Enter your phone number below to recive your password reset instruction",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      // fontSize: 30,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                  offset: Offset(1.0, -1.0), // shadow direction: bottom right
                )
              ],
            ),
            child: ListView(
              // physics: const NeverScrollableScrollPhysics(),
              children: [
                const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                const Text(
                  "Sign up to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorResources.greyColor,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomTextFieldWidget(
                  controller: textController,
                  initialValue: "BernardSteward",
                  prefixIconData: Icons.person,
                ),
                CustomTextFieldWidget(
                  controller: textController,
                  initialValue: "steward@deper.one",
                  prefixIconData: Icons.email,
                ),
                CustomTextFieldWidget(
                  controller: textController,
                  initialValue: "sajsdffljd",
                  prefixIconData: Icons.lock,
                  obscureText: true,
                ),
                CustomTextFieldWidget(
                  controller: textController,
                  initialValue: "sajsfffljd",
                  prefixIconData: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomRoundedButton(
                  buttonText: "Sign Up",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermsScreen(),
                      ),
                    );
                  },
                  width: 260,
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorResources.greyColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Log In',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorResources.blueColor,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
