import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:judy_flutter_ui/presentation/screens/categories.dart';
import 'package:judy_flutter_ui/presentation/screens/dashboard_screen2.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen1.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

class DialogMessangerScreen extends StatelessWidget {
  const DialogMessangerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA1AFC3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: ColorResources.whiteColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: Dimensions.getScreenSize(context).height * .37,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      50,
                    ),
                    topRight: Radius.circular(
                      50,
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset:
                          Offset(1.0, -1.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // shrinkWrap: true,

                  // physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Nav.push(context, const CategoryScreen()),
                          child: SvgPicture.asset(
                            Svgs.dialogiconbutton,
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Nav.push(context, const DashboardScreen2()),
                          child: SvgPicture.asset(
                            Svgs.dialogicon1,
                          ),
                        ),
                        SvgPicture.asset(
                          Svgs.dialogicon2,
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => Nav.push(context, HomeScreen1()),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                Svgs.dialogicon3,
                                color: ColorResources.blueColor,
                              ),
                              const SizedBox(
                                height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              ),
                              const Text("SmartDrive")
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Nav.push(context, HomeScreen1()),
                          child: SvgPicture.asset(
                            Svgs.dialogicon4,
                          ),
                        ),
                        SvgPicture.asset(
                          Svgs.dialogicon5,
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    ListTile(
                      leading: const Icon(
                        Icons.arrow_forward_ios,
                        color: ColorResources.blueColor,
                      ),
                      title: const Text("Your message here"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.circle,
                              color: ColorResources.blueColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: ColorResources.blueColor,
                            ),
                          ),
                        ],
                      ),
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
