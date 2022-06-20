import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/base/choice_widget.dart';
import 'package:judy_flutter_ui/presentation/screens/choose_interest.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

class Choices {
  final String text;
  final bool isChecked;

  Choices(this.text, [this.isChecked = false]);
}

enum Language { english, chinese, portuguses, hindi, arabic, russian, spanish }

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  Language _currentLanguage = Language.english;
  int tag = 1;

  changeLanguage(Language language) {
    setState(() {
      _currentLanguage = language;
    });
  }

  List<Choices> choices = [
    Choices(
      'News',
    ),
    Choices(
      'Entertainment',
    ),
    Choices(
      'Politics',
    ),
    Choices(
      'Automotive',
    ),
    Choices(
      'Sports',
    ),
    Choices(
      'Education',
    ),
    Choices(
      'Fashion',
    ),
    Choices(
      'Travel',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GestureDetector(
        onTap: () => Nav.push(context, const ChooseInterestScreen()),
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 230,
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      CircleAvatar(
                        backgroundColor: Colors.black26,
                        minRadius: 40,
                        maxRadius: 40,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Hi, Natalie",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Please select your preferred language to facilitate communication",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff666666),
                            // fontSize: 1,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 20.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    // height: Dimensions.getScreenSize(context).height * .65,
                    width: Dimensions.getScreenSize(context).width,
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        Wrap(
                          children: List<Widget>.generate(
                            Language.values.toList().length,
                            (int idx) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentLanguage = Language.values[idx];
                                  });
                                },
                                child: ChoiceWidget(
                                  text: Language.values[idx].name,
                                  iconUncheckedColor: ColorResources.blackColor,
                                  iconUncheck: Icons.radio_button_unchecked,
                                  iconColor: Colors.white,
                                  isChecked:
                                      _currentLanguage == Language.values[idx],
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// class ChooseLangu extends StatelessWidget {
//   const ChooseLangu({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return
//     Scaffold(

//       body:  SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: Language.values
//             .map((language) => Row(
//                   children: [
//                     Text(
//                       "${language.name[0]}${language.name.substring(1)}",
//                     ),
//                     Radio(
//                       value: language,
//                       groupValue: _currentLanguage,
//                       onChanged: (Language? language) {
//                         if (language != null) {
//                           changeLanguage(language);
//                         }
//                       },
//                     ),
//                   ],
//                 ))
//             .toList(),
//         // choices
//         //     .map(
//         //       (choice) =>
//         // Row(
//         //         children: [
//         //           Radio(
//         //             value: choice.text,
//         //             groupValue: choice[],
//         //             onChanged: (value) {},
//         //           ),
//         //           Text(choice.text)
//         //         ],
//         //       ),
//         //     )
//         //     .toList(),
//       ),
//     ),
//     );

//   }
// }
