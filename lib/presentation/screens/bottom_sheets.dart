import 'package:flutter/material.dart';

import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/profile_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

Future<void> showChooseLanguageSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: Column(
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            const Text(
              "IOT Sync LIST",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorResources.greyColor,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                  color: ColorResources.blackColor,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Need your '),
                  TextSpan(
                      text: 'Permission',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7C42FF),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: ColorResources.blueLinearGradient,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Smart Watch",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const ListTile(
              title: Text(
                "Company",
              ),
              subtitle: Text(
                "2722 Camden Ave undefined Austin",
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const ListTile(
              title: Text(
                "Wife’s Homw",
              ),
              subtitle: Text(
                "3589 Vally View Ln undefined San Jose",
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const Text(
              "Create a New Home",
              style: TextStyle(
                color: ColorResources.blueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
          ],
        ),
      );
    },
  );
}

Future<void> showBottomPermissionSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () => Nav.push(context, const ProfileScreen()),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
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
          child: ListView(
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "REQUEST ACCESS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorResources.greyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12,
                ),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                      color: ColorResources.blackColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Need your '),
                      TextSpan(
                          text: 'Permission',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7C42FF),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: ColorResources.blueLinearGradient,
                  ),
                  child: const Icon(
                    Icons.camera,
                    color: ColorResources.whiteColor,
                  ),
                ),
                title: const Text(
                  "Camera",
                ),
                subtitle: const Text(
                  "Allow app for use  to take picture.",
                ),
                trailing: CustomRoundedButton(
                  buttonText: "Allow",
                  width: 30,
                  onpressed: () {},
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: ColorResources.blueLinearGradient,
                  ),
                  child: const Icon(
                    Icons.library_add,
                    color: ColorResources.whiteColor,
                  ),
                ),
                title: const Text(
                  "Photo Library",
                ),
                subtitle: const Text(
                  "Access for save photos in your gallery.",
                ),
                trailing: CustomRoundedButton(
                  buttonText: "Allow",
                  width: 30,
                  onpressed: () {},
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: ColorResources.blueLinearGradient,
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: ColorResources.whiteColor,
                  ),
                ),
                title: const Text(
                  "Notification",
                ),
                subtitle: const Text(
                  "Get important information without opening app.",
                ),
                trailing: CustomRoundedButton(
                  buttonText: "Allow",
                  width: 30,
                  onpressed: () {},
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: ColorResources.blueLinearGradient,
                  ),
                  child: const Icon(
                    Icons.location_on,
                    color: ColorResources.whiteColor,
                  ),
                ),
                title: const Text(
                  "Location",
                ),
                subtitle: const Text(
                  "Allow access to your location for better support.",
                ),
                trailing: CustomRoundedButton(
                  buttonText: "Allow",
                  width: 30,
                  onpressed: () {},
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showSelectDeviceSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: Column(
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            const Text(
              "IOT Sync LIST",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorResources.greyColor,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                  color: ColorResources.blackColor,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Need your '),
                  TextSpan(
                      text: 'Permission',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7C42FF),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: ColorResources.blueLinearGradient,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Smart Watch",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const ListTile(
              title: Text(
                "Company",
              ),
              subtitle: Text(
                "2722 Camden Ave undefined Austin",
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const ListTile(
              title: Text(
                "Wife’s Homw",
              ),
              subtitle: Text(
                "3589 Vally View Ln undefined San Jose",
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            const Text(
              "Create a New Home",
              style: TextStyle(
                color: ColorResources.blueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
          ],
        ),
      );
    },
  );
}

Future<void> scanQrCodeSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                    color: ColorResources.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Scan '),
                    TextSpan(
                        text: 'QR Code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7C42FF),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "Align QR Code within frame to scan which is in right side of the camera",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffA1AFC3),
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              Image.network(
                "https://www.freepnglogos.com/uploads/qr-code-png/qr-code-file-wikipedia-code-svg-1.png",
                width: 160,
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "Scanning Code…",
                style: TextStyle(
                  color: Color(0xff051D3F),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              DialogCustomRoundedButton(
                buttonText: "Get Device Code",
                width: 200,
                onpressed: () {},
              )
            ],
          ),
        ),
      );
    },
  );
}

Future<void> newDeviceQrCodeSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                    fontWeight: FontWeight.bold,
                    color: ColorResources.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Add device with '),
                    TextSpan(
                        text: 'QR Code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7C42FF),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    // fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                    color: ColorResources.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Use QR Code on the device to make installation faster for ',
                    ),
                    TextSpan(
                      text: 'Deeper devices',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              Image.network(
                "https://www.freepnglogos.com/uploads/qr-code-png/qr-code-file-wikipedia-code-svg-1.png",
                width: 160,
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "Scanning Code…",
                style: TextStyle(
                  color: Color(0xff051D3F),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "Add manually",
                style: TextStyle(
                  color: Color(0xff7C42FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> newMemberQrCodeSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                    fontWeight: FontWeight.bold,
                    color: ColorResources.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Add '),
                    TextSpan(
                        text: 'new member',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7C42FF),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    // fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                    color: ColorResources.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Add members to your home to use the devices together. ',
                    ),
                    TextSpan(
                      text: ' Scan the QR code below to continue.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              Image.network(
                "https://www.freepnglogos.com/uploads/qr-code-png/qr-code-file-wikipedia-code-svg-1.png",
                width: 160,
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "ID: 8DFS8D7FASIN",
                style: TextStyle(
                  color: Color(0xff051D3F),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "Add manually",
                style: TextStyle(
                  color: Color(0xff7C42FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> noDeviceYetSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 30,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                  color: ColorResources.blackColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Upppp.\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'There is no devices yet',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C42FF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            const Text(
              "Start adding device so we can help you manage your life better",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffA1AFC3),
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            DialogCustomRoundedButton(
              buttonText: "Add new device",
              width: 200,
              onpressed: () {},
            )
          ],
        ),
      );
    },
  );
}
