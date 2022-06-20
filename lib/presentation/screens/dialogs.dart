import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens/create_new_password_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';

// showEmailSentDialog
Future<void> showPasswordResetialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), //this right here
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.done,
                  size: 100,
                  color: ColorResources.blueColor,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Your password have been reset.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color(0xffA1AFC3),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'You will receive an email to reset your password. Enter ',
                      ),
                      TextSpan(
                        text: ' 6-digit ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'code and create a new password',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomRoundedButton(
                  buttonText: "Close",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateNewPasswordScreen(),
                      ),
                    );
                  },
                  width: 260,
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showEmailSentDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), //this right here
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.insert_invitation,
                  size: 100,
                  color: ColorResources.blueColor,
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Unable to send mail\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: 'at this time.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Please check your internet connection and try again in a few minutes ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA1AFC3),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                DialogCustomRoundedButton(
                  buttonText: "Try Again",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  width: 260,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Color(0xffA1AFC3),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });

  // return showDialog<void>(
  //   context: context,
  //   barrierDismissible: false, // user must tap button!
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       elevation: 9,
  //       title: const Text('AlertDialog Title'),
  //       content: SingleChildScrollView(
  //         child: ListBody(
  //           children: const <Widget>[
  //             Text('This is a demo alert dialog.'),
  //             Text('Would you like to approve of this message?'),
  //           ],
  //         ),
  //       ),
  //       actions: <Widget>[
  //         TextButton(
  //           child: const Text('Approve'),
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //         ),
  //       ],
  //     );
  //   },
  // );
}

Future<void> showInviteDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), //this right here
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 100,
                ),
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Send invitation '),
                      TextSpan(
                          text: 'successful',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7C42FF),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Successfully sent application invitation to the email address:  ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA1AFC3),
                        ),
                      ),
                      TextSpan(
                        text: 'jamee@deeper.one.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff051D3F)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                DialogCustomRoundedButton(
                  buttonText: "Invite New People",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  width: 260,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Color(0xffA1AFC3),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });

  // return showDialog<void>(
  //   context: context,
  //   barrierDismissible: false, // user must tap button!
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       elevation: 9,
  //       title: const Text('AlertDialog Title'),
  //       content: SingleChildScrollView(
  //         child: ListBody(
  //           children: const <Widget>[
  //             Text('This is a demo alert dialog.'),
  //             Text('Would you like to approve of this message?'),
  //           ],
  //         ),
  //       ),
  //       actions: <Widget>[
  //         TextButton(
  //           child: const Text('Approve'),
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //         ),
  //       ],
  //     );
  //   },
  // );
}
