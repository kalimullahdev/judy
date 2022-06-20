import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//bottom_sheets.dart';
import 'package:judy_flutter_ui/presentation/screens//browse_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//categories.dart';
import 'package:judy_flutter_ui/presentation/screens//choose_course.dart';
import 'package:judy_flutter_ui/presentation/screens//create_home_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//dashboard_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//dashboard_screen2.dart';
import 'package:judy_flutter_ui/presentation/screens//dialogs.dart';
import 'package:judy_flutter_ui/presentation/screens//flight_destination_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//flight_payment_details.dart';
import 'package:judy_flutter_ui/presentation/screens//google_maps.dart';
import 'package:judy_flutter_ui/presentation/screens//holidays_result_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//home_screen1.dart';
import 'package:judy_flutter_ui/presentation/screens//messanger_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//news_blog_list.dart';
import 'package:judy_flutter_ui/presentation/screens//search_screen.dart';
import 'package:judy_flutter_ui/presentation/screens//settings.dart';
import 'package:judy_flutter_ui/presentation/screens//sign_up.dart';
import 'package:judy_flutter_ui/presentation/screens//terms_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/add_product_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/choose_interest.dart';
import 'package:judy_flutter_ui/presentation/screens/choose_language.dart';
import 'package:judy_flutter_ui/presentation/screens/device_list.dart';
import 'package:judy_flutter_ui/presentation/screens/profile_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/question_screeen3.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/presentation/base/custom_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const NavDrawer(),
      endDrawer: const EndDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Home ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => _openEndDrawer(),
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomRoundedButton(
                buttonText: "Show Invite dialog",
                onpressed: () => showInviteDialog(context),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Category screen",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Dashboard",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Add new Device",
                onpressed: () => newDeviceQrCodeSheet(context),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Add new Member",
                onpressed: () => newMemberQrCodeSheet(context),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Dashboard 2",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen2(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Browse",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BrowseScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Create home screen",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateHomeScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Select flight",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FlightDestinationScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Google maps",
                onpressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GoogleMapsScreen(),
                  ),
                ),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Choose Language",
                onpressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseLanguage(),
                  ),
                ),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Blog List",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewsBlogList(),
                    )),
                width: 200,
              ),
              // FlightPaymentDetails
              CustomRoundedButton(
                buttonText: "Flight payment details",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FlightPaymentDetails(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Device list",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeviceList(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Holidays result",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HolidaysResultScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Home",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen1(),
                    )),
                width: 200,
              ),
              // CategoryScreen
              CustomRoundedButton(
                buttonText: "Choose course",
                onpressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseCourse(),
                  ),
                ),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Add product",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddProductScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Choose interest",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseInterestScreen(),
                    )),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Search",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    )),
                width: 200,
              ),

              CustomRoundedButton(
                buttonText: "Select Device",
                onpressed: () => showSelectDeviceSheet(context),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "Scan QR code",
                onpressed: () => scanQrCodeSheet(context),
                width: 200,
              ),

              CustomRoundedButton(
                buttonText: "Choose languege",
                onpressed: () => showSelectDeviceSheet(context),
                width: 200,
              ),
              CustomRoundedButton(
                buttonText: "No device found",
                onpressed: () => noDeviceYetSheet(context),
                width: 200,
              ),

              CustomRoundedButton(
                buttonText: "Messanger",
                onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessangerScreen(),
                    )),
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Inforamtion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                const Text(
                  "Top Tags",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                    color: Colors.red,
                  ),
                ),
                const Divider(
                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  thickness: 2,
                ),
                ListTile(
                  dense: true,
                  title: const Text("Aside"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Desing & Art"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Featured"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Lifestyle"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("News"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Reviews"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Staff Picks"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Tech"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Trending"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text("Video"),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                  },
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                const Text(
                  "Top Articles",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                    color: Colors.red,
                  ),
                ),
                const Divider(
                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  thickness: 1,
                ),
                const ArticleWidget(),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                ),
                const ArticleWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Top 10 Europe destinations",
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_DEFAULT,
          ),
        ),
        SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
        Text(
          "Step by step, experiencing something greater than myself.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: Dimensions.FONT_SIZE_SMALL,
          ),
        ),
        SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
        Text(
          "4 March, 2016",
          style: TextStyle(
            color: Colors.grey,
            fontSize: Dimensions.FONT_SIZE_SMALL,
          ),
        ),
      ],
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          )),
                      child: Container(
                        width: 60,
                        height: 60,
                        // margin: const EdgeInsets.all(50.0),

                        decoration: const BoxDecoration(
                          color: Color(0xffC8C7CC),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            "60 x 60",
                            style: TextStyle(color: Color(0xff8A8A8F)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Rodrick Smurf',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff7C42FF),
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'San Francisco, California',
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  dense: true,
                  title: const Text('Dashboard'),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: const Text('Calendar'),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: const Text('Team'),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: const Text('Activity'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionScreen3(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text('Notifications'),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: const Text('Archive'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermsScreen(),
                      ),
                    )
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text('Settings'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    )
                  },
                ),
              ],
            ),
            ListTile(
              title: Row(
                children: const [
                  Text('Logout   '),
                  Icon(
                    Icons.logout,
                    size: 20,
                  ),
                ],
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DialogCustomRoundedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;

  const DialogCustomRoundedButton({
    required this.buttonText,
    required this.width,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Color(0xff26B9D1),
              Color(0xff13C2B4),
            ],
          ),
          // color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(40),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(width, 0)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            onpressed();
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              // fontSize: 16,
              // fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}



//  Container(
//                   height: 100.0,
//                   color: Colors.transparent,
//                   child: Container(
//                       decoration: const BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10.0),
//                             topRight: Radius.circular(10.0),
//                           )),
//                       child: const Center(
//                         child: Text("Hi modal sheet"),
//                       )),
//                 ),