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

  SingleChatLtRWidget({
    Key? key,
    required this.messageText,
    this.profileSrc,
    this.showOnRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          const SizedBox(
            width: Dimensions.PADDING_SIZE_SMALL,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            constraints: BoxConstraints(
              minWidth: 10,
              maxWidth: Dimensions.getScreenSize(context).width * 0.65,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffF16487),
                  Color(0xffFC8889),
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
        ],
      ),
    );
  }
}

class SingleChatRtLWidget extends StatelessWidget {
  final String messageText;
  final String? profileSrc;
  bool showOnRight;

  SingleChatRtLWidget({
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
