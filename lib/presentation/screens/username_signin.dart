import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens/assistant_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/dialog_messanger_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/forget_password.dart';
import 'package:judy_flutter_ui/presentation/screens/sign_up.dart';
import 'package:judy_flutter_ui/presentation/screens/signin_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

class UsernameSigninScreen extends StatelessWidget {
  const UsernameSigninScreen({Key? key}) : super(key: key);
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Hello'),
                    TextSpan(
                        text: '\nthere!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  height: (Dimensions.getScreenSize(context).height / 3) * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset:
                            Offset(1.0, -1.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimensions.PADDING_SIZE_DEFAULT,
                      horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const Text(
                        "Sign in to continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorResources.greyColor,
                        ),
                      ),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      ),
                      GestureDetector(
                        onTap: () => Nav.push(context, const AssistantScreen()),
                        child: CustomTextFieldWidget(
                          controller: TextEditingController(),
                          hintText: "Username",
                          prefixIconData: Icons.person,
                        ),
                      ),
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      CustomTextFieldWidget(
                        controller: TextEditingController(),
                        hintText: "Password",
                        prefixIconData: Icons.lock,
                        obscureText: true,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility_off,
                            )),
                      ),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgetPassword(),
                              ),
                            ),
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffA1AFC3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      CustomRoundedButton(
                        buttonText: "Sign In",
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const DialogMessangerScreen(),
                            ),
                          );
                        },
                        width: 260,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'Don’t have an account?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA1AFC3),
                                ),
                              ),
                              TextSpan(
                                text: ' Sign Up',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7C42FF),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Nav.push(context, const SignUp());
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      TextButton(
                        onPressed: () {
                          Nav.push(context, const SignInScreen());
                          // Navigator.pop(context);
                        },
                        child: const Text(
                          "Try another way",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorResources.blueColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
