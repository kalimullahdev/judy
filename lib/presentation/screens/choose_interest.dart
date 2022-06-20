import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/base/choice_widget.dart';
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
      body: GestureDetector(
        onTap: () => Nav.push(context, const ChooseCourse()),
        child: Center(
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

                    return const ChoiceWidget(
                      text: "Mentality",
                      textColor: Colors.white,
                      linearGradient: LinearGradient(
                        colors: [
                          Color(0xff292B2D),
                          Color(0xff121314),
                        ],
                      ),
                      iconColor: Colors.black,
                      isChecked: true,
                    );
                    //  Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: 30,
                    //     height: 20,
                    //     color: ColorResources.greyColor,
                    //   ),
                    // );
                    //  Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //   child: ChoiceWidget(
                    //     text: listKey,
                    //     textColor: Colors.white,
                    //     linearGradient: gradientList[gradientIndex],
                    //     iconColor: Colors.black,
                    //     isChecked: listValue,
                    //     onSelected: () {
                    //       setState(() {
                    //         interestMap[interestMap.keys.toList()[idx]] =
                    //             interestMap.values.toList()[idx];
                    //       });
                    //     },
                    //   ),
                    //   // ChoiceChip(
                    //   //   selectedColor: ColorResources.greyColor,
                    //   //   label: Text(interestMap.keys.toList()[idx]),
                    //   //   selected: interestMap.values.toList()[idx],
                    //   //   onSelected: (bool selected) {
                    //   //     setState(() {
                    //   //       interestMap[interestMap.keys.toList()[idx]] =
                    //   //           interestMap.values.toList()[idx];
                    //   //     });
                    //   //   },
                    //   // ),
                    // );
                  },
                ).toList(),
              ),
              const Text(
                "12 interests selected ",
                style: TextStyle(color: Color(0xff5A537B)),
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  ChoiceWidget(
                    text: "Mentality",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xff292B2D),
                        Color(0xff121314),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                  SizedBox(width: 12),
                  ChoiceWidget(
                    text: "Marathons",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xff26B9D1),
                        Color(0xff13C2B4),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                  SizedBox(width: 12),
                  ChoiceWidget(
                    text: "Marathons",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xffFFA26E),
                        Color(0xffE36D5D),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  ChoiceWidget(
                    text: "Mentality",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xffF16487),
                        Color(0xffFC8889),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                  SizedBox(width: 12),
                  ChoiceWidget(
                    text: "Marathons",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xff5A78F0),
                        Color(0xff5A78F0),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                  SizedBox(width: 12),
                  ChoiceWidget(
                    text: "Traveling",
                    textColor: Colors.white,
                    linearGradient: LinearGradient(
                      colors: [
                        Color(0xff26B9D1),
                        Color(0xff13C2B4),
                      ],
                    ),
                    iconColor: Colors.black,
                    isChecked: true,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Add interest",
                  style: TextStyle(
                    color: ColorResources.blueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
