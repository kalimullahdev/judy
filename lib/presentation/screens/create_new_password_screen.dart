import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen.dart';

import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
            child: SizedBox(
              height: Dimensions.getScreenSize(context).height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Create new '),
                        TextSpan(
                            text: 'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff7C42FF),
                            )),
                      ],
                    ),
                  ),
                  // const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                  Column(
                    children: [
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      ),
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
                      CustomTextFieldWidget(
                        controller: TextEditingController(),
                        hintText: "Conform password",
                        prefixIconData: Icons.lock,
                        obscureText: true,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility_off,
                            )),
                      ),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      ),
                    ],
                  ),
                  const Text(
                    "Please do not share your password with others for security",
                    style: TextStyle(
                      color: ColorResources.blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomRoundedButton(
            buttonText: "Create password",
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            width: 250,
          ),
        ],
      ),
    );
  }
}
