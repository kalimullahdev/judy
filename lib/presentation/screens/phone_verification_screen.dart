import 'dart:async';

import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//home_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerificationScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  State<PinCodeVerificationScreen> createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE88BFF),
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: Dimensions.getScreenSize(context).height * 0.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(1.0, -1.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.PADDING_SIZE_LARGE,
                            vertical: Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Check '),
                                TextSpan(
                                    text: 'Your Inbox',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.blueColor,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text:
                                    'Successfully sent application invitation to the email address:  ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffA1AFC3),
                                ),
                              ),
                              TextSpan(
                                text: '${widget.phoneNumber}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff051D3F)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                        Form(
                          key: formKey,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 30,
                              ),
                              child: PinCodeTextField(
                                focusNode: FocusNode(canRequestFocus: true),
                                appContext: context,
                                pastedTextStyle: TextStyle(
                                  color: Colors.green.shade600,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 6,
                                obscureText: false,
                                animationType: AnimationType.fade,
                                // validator: (v) {
                                //   if (v!.length < 6) {
                                //     return "I'm from validator";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.circle,
                                  borderRadius: BorderRadius.circular(5),
                                  fieldHeight: 40,
                                  fieldWidth: 40,
                                  activeFillColor: Colors.white,
                                  activeColor: ColorResources.blueColor,
                                  inactiveColor: ColorResources.blueColor,
                                  selectedColor: ColorResources.blueColor,
                                ),

                                cursorColor: ColorResources.blackColor,
                                animationDuration:
                                    const Duration(milliseconds: 300),
                                errorAnimationController: errorController,
                                controller: TextEditingController(),
                                keyboardType: TextInputType.number,
                                boxShadows: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                onCompleted: (v) {
                                  debugPrint("Completed");
                                },
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  debugPrint(value);
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                                beforeTextPaste: (text) {
                                  debugPrint("Allowing to paste $text");
                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                  return true;
                                },
                              )),
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                        Text(
                          hasError
                              ? "*Please fill up all the cells properly"
                              : "",
                          style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const Center(child: Text("Expires in 2:31")),
                        const SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                    DialogCustomRoundedButton(
                      buttonText: "Sign In",
                      onpressed: () {
                        formKey.currentState!.validate();
                        // conditions for validating
                        if (currentText.length != 6 ||
                            currentText != "123456") {
                          errorController!.add(ErrorAnimationType
                              .shake); // Triggering error shake animation
                          setState(() => hasError = true);
                        } else {
                          setState(
                            () {
                              hasError = false;
                              snackBar("OTP Verified!!");
                            },
                          );
                        }
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class PinCodeVerificationScreen2 extends StatefulWidget {
//   final String? phoneNumber;

//   const PinCodeVerificationScreen2({
//     Key? key,
//     this.phoneNumber,
//   }) : super(key: key);

//   @override
//   State<PinCodeVerificationScreen2> createState() =>
//       _PinCodeVerificationScreen2State();
// }

// class _PinCodeVerificationScreen2State
//     extends State<PinCodeVerificationScreen2> {
//   TextEditingController textEditingController = TextEditingController();
//   StreamController<ErrorAnimationType>? errorController;

//   bool hasError = false;
//   String currentText = "";
//   final formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     errorController = StreamController<ErrorAnimationType>();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     errorController!.close();

//     super.dispose();
//   }

//   // snackBar Widget
//   snackBar(String? message) {
//     return ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message!),
//         duration: const Duration(seconds: 2),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffE88BFF),
//       body: ListView(
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           const SizedBox(
//             height: 120,
//           ),
//           Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 height: 1000,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50.0),
//                   color: Colors.white,
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 2.0,
//                       spreadRadius: 1.0,
//                       offset:
//                           Offset(1.0, -1.0), // shadow direction: bottom right
//                     )
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: Dimensions.PADDING_SIZE_LARGE,
//                         vertical: Dimensions.PADDING_SIZE_DEFAULT,
//                       ),
//                       child: RichText(
//                         text: const TextSpan(
//                           style: TextStyle(
//                             fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
//                             color: Colors.black,
//                           ),
//                           children: <TextSpan>[
//                             TextSpan(text: 'Check '),
//                             TextSpan(
//                                 text: 'Your Inbox',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: ColorResources.blueColor,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
//                     RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                         style: const TextStyle(
//                           fontSize: 10.0,
//                           color: Colors.black,
//                         ),
//                         children: <TextSpan>[
//                           const TextSpan(
//                             text:
//                                 'Successfully sent application invitation to the email address:  ',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Color(0xffA1AFC3),
//                             ),
//                           ),
//                           TextSpan(
//                             text: '${widget.phoneNumber}',
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff051D3F)),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: Dimensions.FONT_SIZE_LARGE),
//                     Form(
//                       key: formKey,
//                       child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                             vertical: 8.0,
//                             horizontal: 30,
//                           ),
//                           child: PinCodeTextField(
//                             appContext: context,
//                             pastedTextStyle: TextStyle(
//                               color: Colors.green.shade600,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             length: 6,
//                             obscureText: false,
//                             animationType: AnimationType.fade,
//                             validator: (v) {
//                               if (v!.length < 6) {
//                                 return "I'm from validator";
//                               } else {
//                                 return null;
//                               }
//                             },
//                             pinTheme: PinTheme(
//                               shape: PinCodeFieldShape.circle,
//                               borderRadius: BorderRadius.circular(5),
//                               fieldHeight: 40,
//                               fieldWidth: 40,
//                               activeFillColor: Colors.white,
//                               activeColor: ColorResources.blueColor,
//                               inactiveColor: ColorResources.blueColor,
//                               selectedColor: ColorResources.blueColor,
//                             ),

//                             cursorColor: ColorResources.blackColor,
//                             animationDuration:
//                                 const Duration(milliseconds: 300),
//                             errorAnimationController: errorController,
//                             controller: textEditingController,
//                             keyboardType: TextInputType.number,
//                             boxShadows: const [
//                               BoxShadow(
//                                 offset: Offset(0, 1),
//                                 color: Colors.black12,
//                                 blurRadius: 10,
//                               )
//                             ],
//                             onCompleted: (v) {
//                               debugPrint("Completed");
//                             },
//                             // onTap: () {
//                             //   print("Pressed");
//                             // },
//                             onChanged: (value) {
//                               debugPrint(value);
//                               setState(() {
//                                 currentText = value;
//                               });
//                             },
//                             beforeTextPaste: (text) {
//                               debugPrint("Allowing to paste $text");
//                               //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//                               //but you can show anything you want here, like your pop up saying wrong paste format or etc
//                               return true;
//                             },
//                           )),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                       child: Text(
//                         hasError
//                             ? "*Please fill up all the cells properly"
//                             : "",
//                         style: const TextStyle(
//                             color: Colors.red,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ),
//                     const Center(child: Text("Expires in 2:31")),
//                     const SizedBox(
//                       height: 14,
//                     ),
//                     DialogCustomRoundedButton(
//                       buttonText: "Sign In",
//                       onpressed: () {
//                         formKey.currentState!.validate();
//                         // conditions for validating
//                         if (currentText.length != 6 ||
//                             currentText != "123456") {
//                           errorController!.add(ErrorAnimationType
//                               .shake); // Triggering error shake animation
//                           setState(() => hasError = true);
//                         } else {
//                           setState(
//                             () {
//                               hasError = false;
//                               snackBar("OTP Verified!!");
//                             },
//                           );
//                         }
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const HomeScreen(),
//                           ),
//                         );
//                       },
//                       width: 250,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
