import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.arrow_back,
            //   ),
            // ),
            SizedBox(
              height: 50,
              child: Image.asset(Images.logo),
            ),
            const Text("Lacara Jones"),
          ],
        ),
        backgroundColor: ColorResources.blueColor,
        elevation: 0,
        // title: const Text("Lacara Jones"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
        ],
      ),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 60,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChatLtRWidget(
                  messageText:
                      "I am wondering why Deeper is so good and beautiful",
                ),
                SingleChatLtRWidget(
                  messageText: "Is there any explanation?",
                  profileSrc: "kfjsdafkl",
                ),
                SingleChatRtLWidget(
                  messageText:
                      "II think the only reason here is that developers themselves want something best",
                  profileSrc: "kfjsdafkl",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: const Icon(
                Icons.arrow_forward_ios,
                color: ColorResources.blueColor,
              ),
              // Your message here
              title: TextFormField(
                cursorColor: ColorResources.blackColor,
                decoration: const InputDecoration(
                    hintText: "Your message here",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: ColorResources.greyColor,
                    )),
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
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SingleChatLtRWidget extends StatelessWidget {
  final String messageText;
  final String? profileSrc;
  bool showOnRight;
  final Color? backgroundColor;
  final Color? textColor;
  final LinearGradient? chatCardGradient;
  final double? padding;
  final bool showProfile;
  final bool showProfileInLeft;
  SingleChatLtRWidget({
    Key? key,
    required this.messageText,
    this.profileSrc,
    this.showOnRight = false,
    this.backgroundColor,
    this.chatCardGradient,
    this.textColor,
    this.padding,
    this.showProfile = false,
    this.showProfileInLeft = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(padding ?? 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          showProfile && showProfileInLeft
              ? profileSrc != null
                  ? CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg"),
                      backgroundColor:
                          backgroundColor ?? ColorResources.blueColor,
                      maxRadius: 15,
                    )
                  : const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: ColorResources.whiteColor,
                      ),
                    )
              : const SizedBox(
                  width: 30,
                ),
          SizedBox(
            width: padding ?? Dimensions.PADDING_SIZE_SMALL,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            constraints: BoxConstraints(
              minWidth: 10,
              maxWidth: Dimensions.getScreenSize(context).width * 0.65,
            ),
            decoration: BoxDecoration(
              gradient: chatCardGradient ??
                  const LinearGradient(
                    colors: [
                      Color(0xffF16487),
                      Color(0xffFC8889),
                    ],
                  ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Text(
              messageText,
              style: TextStyle(
                color: textColor ?? Colors.white,
              ),
            ),
          ),
          showProfile && !showProfileInLeft
              ? profileSrc != null
                  ? CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg"),
                      backgroundColor:
                          backgroundColor ?? ColorResources.blueColor,
                      maxRadius: 15,
                    )
                  : const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: ColorResources.whiteColor,
                      ),
                    )
              : const SizedBox(
                  width: 30,
                ),
        ],
      ),
    );
  }
}

class SingleChatRtLWidget extends StatelessWidget {
  final String messageText;
  final String? profileSrc;
  final bool showOnRight;

  const SingleChatRtLWidget({
    Key? key,
    required this.messageText,
    this.profileSrc,
    this.showOnRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            constraints: BoxConstraints(
              minWidth: 10,
              maxWidth: Dimensions.getScreenSize(context).width * 0.65,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff26B9D1),
                  Color(0xff13C2B4),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Text(
              messageText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: Dimensions.PADDING_SIZE_SMALL,
          ),
          profileSrc != null
              ? const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg"),
                  backgroundColor: ColorResources.blueColor,
                  maxRadius: 15,
                )
              : const SizedBox(
                  width: 30,
                ),
        ],
      ),
    );
  }
}
