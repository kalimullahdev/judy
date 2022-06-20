import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//phone_verification_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//signin_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';

class PhoneScreenSignin extends StatelessWidget {
  const PhoneScreenSignin({Key? key}) : super(key: key);
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Dimensions.getScreenSize(context).height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Start with '),
                          TextSpan(
                              text: 'Phone Number ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorResources.blueColor,
                              )),
                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                'Start logging in and continue managing your home with Deeper ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffA1AFC3),
                            ),
                          ),
                          TextSpan(
                            text: 'Deeper',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
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
                    CustomTextFieldWidget(
                      controller: TextEditingController(),
                      initialValue: "+123 4163 712",
                      prefixIconData: Icons.phone,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Can’t login to your account? ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorResources.greyColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Try other way',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorResources.blueColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomRoundedButton(
                buttonText: "Next",
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PinCodeVerificationScreen(
                        phoneNumber: "+92347931770",
                      ),
                    ),
                  );
                },
                width: 260,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
