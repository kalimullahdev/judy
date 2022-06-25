import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text("My Stats"),
        actions: [
          Center(
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(Images.profile),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: Dimensions.PADDING_SIZE_LARGE,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Text(
                    '12,253 ',
                    style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "steps",
                    style: TextStyle(
                      color: Color(0xffB4B4B4),
                    ),
                  )
                ],
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Completed '),
                    TextSpan(
                      text: 'today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff388AF7),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xff388AF7),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const Icon(
                          Icons.social_distance,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      const Text(
                        "Distance",
                        style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        "3.48 ml",
                        style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.more_vert),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xff7BDEFB),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const Icon(
                          Icons.access_alarm_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      const Text(
                        "Distance",
                        style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        "3.48 ml",
                        style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.more_vert),
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset(Svgs.dashboardScreenImage),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
