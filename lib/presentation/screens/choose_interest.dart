import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/base/choice_widget.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/screens/choose_course.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

// final List<bool> insterestList = [];
Map<String, bool> interestMap = <String, bool>{
  "Mentality": false,
  "Running marathons": false,
  "Mountain climbing": false,
  "Sport": false,
  "Action": false,
  "Travling": false,
  "Affection": false,
  "Geo- caching": false,
  "Episode TV series": false,
};

final List<LinearGradient> gradientList = [
  const LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(-1, 1),
    colors: [
      Color(0xff292B2D),
      Color(0xff121314),
    ],
  ),
  const LinearGradient(
    begin: Alignment(-1, 1),
    end: Alignment(1, 1),
    colors: [
      Color(0xff26B9D1),
      Color(0xff13C2B4),
    ],
  ),
  const LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, -1),
    colors: [
      Color(0xffE36D5D),
      Color(0xffFFA26E),
    ],
  ),
  const LinearGradient(
    begin: Alignment(1, -1),
    end: Alignment(1, 1),
    colors: [
      Color(0xffFC8889),
      Color(0xffF164BA),
    ],
  ),
  const LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, -1),
    colors: [
      Color(0xff4149EF),
      Color(0xff5A78F0),
    ],
  ),
  const LinearGradient(
    begin: Alignment(-1, 1),
    end: Alignment(0, 0),
    colors: [
      Color(0xff26B9D1),
      Color(0xff13C2B4),
    ],
  ),
  const LinearGradient(
    begin: Alignment(1, -1),
    end: Alignment(1, 1),
    colors: [
      Color(0xffFC8889),
      Color(0xffF16499),
    ],
  ),
];

// 4149EF
class ChooseInterestScreen extends StatefulWidget {
  const ChooseInterestScreen({Key? key}) : super(key: key);

  @override
  State<ChooseInterestScreen> createState() => _ChooseInterestScreenState();
}

class _ChooseInterestScreenState extends State<ChooseInterestScreen> {
  Map<String, bool> interestMap = <String, bool>{
    "Mentality": false,
    "Running marathons": false,
    "Mountain climbing": false,
    "Sport": false,
    "Action": false,
    "Travling": false,
    "Affection": false,
    "Geo- caching": false,
    "Episode TV series": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Pick your'),
                  TextSpan(
                      text: '\ninterests',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorResources.blueColor,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "12 interests selected ",
              style: TextStyle(color: Color(0xff5A537B)),
            ),
            const SizedBox(height: 8),
            Wrap(
              children: List<Widget>.generate(
                interestMap.values.toList().length,
                (int idx) {
                  final listKey = interestMap.keys.toList()[idx];
                  final listValue = interestMap.values.toList()[idx];
                  final gradientIndex = idx >= gradientList.length
                      ? idx % gradientList.length
                      : idx;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        interestMap[interestMap.keys.toList()[idx]] =
                            !interestMap.values.toList()[idx];
                      });
                    },
                    child: ChoiceWidget(
                      text: interestMap.keys.toList()[idx],
                      textColor: Colors.white,
                      linearGradient: gradientList[gradientIndex],

                      isChecked: interestMap.values.toList()[idx],
                      // isChecked: true,
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                "Add interest",
                style: TextStyle(
                  color: ColorResources.blueColor,
                ),
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRoundedButton(
                  onpressed: () {
                    Nav.pop(context);
                  },
                  buttonText: "Back",
                ),
                CustomRoundedButton(
                  onpressed: () {
                    Nav.push(context, const ChooseCourse());
                  },
                  buttonText: "Next",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
