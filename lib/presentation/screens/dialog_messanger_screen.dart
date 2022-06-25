import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:judy_flutter_ui/presentation/screens/categories.dart';
import 'package:judy_flutter_ui/presentation/screens/dashboard_screen2.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen1.dart';
import 'package:judy_flutter_ui/presentation/screens/messanger_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

class DialogMessangerScreen extends StatefulWidget {
  const DialogMessangerScreen({Key? key}) : super(key: key);

  @override
  State<DialogMessangerScreen> createState() => _DialogMessangerScreenState();
}

class _DialogMessangerScreenState extends State<DialogMessangerScreen> {
  bool showMenu = true;

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    Images.logo,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChatLtRWidget(
                        padding: 0,
                        textColor: ColorResources.blackColor,
                        messageText: "Hi , how can i help?",
                        chatCardGradient: ColorResources.whiteLinearGradient,
                      ),
                      const SizedBox(
                          height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                      SingleChatLtRWidget(
                        padding: 0,
                        textColor: ColorResources.blackColor,
                        messageText: "You want to explore your home?",
                        chatCardGradient: ColorResources.whiteLinearGradient,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              SingleChatLtRWidget(
                showProfile: true,
                padding: 0,
                messageText:
                    "Hi Mira, what about the color combination I made yesterday, do you think it's still not right?",
                chatCardGradient: ColorResources.blueLinearGradient,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SingleChatLtRWidget(
                  showProfileInLeft: true,
                  showProfile: true,
                  padding: 0,
                  textColor: ColorResources.blackColor,
                  messageText: "Ok",
                  chatCardGradient: ColorResources.whiteLinearGradient,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SingleChatLtRWidget(
                  padding: 0,
                  textColor: ColorResources.blackColor,
                  messageText: "Hi , how can i help?",
                  chatCardGradient: ColorResources.whiteLinearGradient,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: showMenu
                  ? Dimensions.getScreenSize(context).height * .37
                  : 90,
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
                    showMenu
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () => Nav.push(
                                        context, const CategoryScreen()),
                                    child: SvgPicture.asset(
                                      Svgs.dialogiconbutton,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => Nav.push(
                                        context, const DashboardScreen2()),
                                    child: SvgPicture.asset(
                                      Svgs.dialogicon1,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    Svgs.dialogicon2,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_DEFAULT),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () =>
                                        Nav.push(context, HomeScreen1()),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          Svgs.dialogicon3,
                                          color: ColorResources.blueColor,
                                        ),
                                        const SizedBox(
                                          height: Dimensions
                                              .PADDING_SIZE_EXTRA_SMALL,
                                        ),
                                        const Text("Smart Drive")
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () =>
                                        Nav.push(context, HomeScreen1()),
                                    child: SvgPicture.asset(
                                      Svgs.dialogicon4,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    Svgs.dialogicon5,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                            ],
                          )
                        : const SizedBox(),
                    ListTile(
                      leading: GestureDetector(
                        onTap: () => setState(
                          () {
                            showMenu = !showMenu;
                          },
                        ),
                        child: showMenu
                            ? const Icon(
                                Icons.arrow_forward_ios,
                                color: ColorResources.blueColor,
                              )
                            : GestureDetector(
                                child: SvgPicture.asset(
                                  Svgs.moreMenu,
                                ),
                              ),
                      ),
                      // title: const Text("Your message here"),
                      title: const TextField(
                        cursorColor: ColorResources.blueColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          isDense: true,
                          hintStyle: TextStyle(

                              // color: Colors.white,
                              ),
                        ),
                      ),
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
