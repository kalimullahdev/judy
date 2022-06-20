import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens/dialogs.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
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
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Forget '),
                      TextSpan(
                        text: 'password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7C42FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT,
                    color: Color(0xffA1AFC3),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Enter your phone number below to recive your ',
                    ),
                    TextSpan(
                      text: ' password reset instruction.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              CustomTextFieldWidget(
                controller: TextEditingController(),
                initialValue: "+123 3456 789",
                prefixIconData: Icons.phone,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              CustomRoundedButton(
                buttonText: "Send",
                onpressed: () {
                  showPasswordResetialog(context);
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
