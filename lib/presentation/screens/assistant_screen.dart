import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/screens/choose_language.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/nav.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: Dimensions.getScreenSize(context).width,
                height: 140,
                color: const Color(0xffA6A4B8),
              ),
              ClipPath(
                clipper: ProsteBezierCurve(
                  position: ClipPosition.bottom,
                  list: [
                    BezierCurveSection(
                      start: const Offset(0, 125),
                      top: Offset(
                          Dimensions.getScreenSize(context).width / 4, 150),
                      end: Offset(
                          Dimensions.getScreenSize(context).width / 2, 125),
                    ),
                    BezierCurveSection(
                      start: Offset(
                          Dimensions.getScreenSize(context).width / 2, 125),
                      top: Offset(
                          Dimensions.getScreenSize(context).width / 4 * 3, 100),
                      end: Offset(Dimensions.getScreenSize(context).width, 150),
                    ),
                  ],
                ),
                child: Container(
                  height: 150,
                  color: const Color(0xffA6A4B8),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              vertical: Dimensions.PADDING_SIZE_LARGE,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Nav.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: ColorResources.whiteColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: ColorResources.whiteColor,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.blackColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Last',
                        style: TextStyle(
                          color: ColorResources.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Step',
                        style: TextStyle(
                          color: ColorResources.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                const Center(
                  child: SizedBox(
                    width: 280,
                    child: Text(
                      "Your account is now ready, complete the information to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorResources.whiteColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                Align(
                  child: Container(
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                      color: const Color(0xffA1AFC3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    // child: const CircleAvatar(
                    //   maxRadius: 80,
                    // ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("BernardSteward"),
                ),
                const ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text("Dec 12, 1980"),
                ),
                const ListTile(
                  leading: Icon(FontAwesomeIcons.genderless),
                  title: Text("Gendel"),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                Center(
                  child: CustomRoundedButton(
                    buttonText: "Start",
                    onpressed: () {
                      Nav.push(context, const ChooseLanguage());
                    },
                    width: 200,
                    linearGradient: ColorResources.greenLinearGradient,
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
