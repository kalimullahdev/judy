import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/base/custom_text_field.dart';

class CreateHomeScreen extends StatelessWidget {
  const CreateHomeScreen({Key? key}) : super(key: key);
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Create your '),
                          TextSpan(
                              text: 'New Home',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorResources.blueColor,
                              )),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        CustomTextFieldWidget(
                          controller: TextEditingController(),
                          initialValue: "Home",
                          prefixIconData: Icons.home,
                        ),
                        CustomTextFieldWidget(
                          controller: TextEditingController(),
                          hintText: "Home address",
                          prefixIconData: Icons.location_on,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                      child: Text(
                        "After creating a new home, let’s add some devices for easier management",
                        style: TextStyle(
                          color: ColorResources.greyColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CustomRoundedButton(
                buttonText: 'Create',
                onpressed: () {},
                width: 260,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
