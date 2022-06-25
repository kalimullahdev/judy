import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:judy_flutter_ui/presentation/screens/device_list.dart';
import 'package:judy_flutter_ui/presentation/screens/google_maps.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';
import 'package:judy_flutter_ui/utill/nav.dart';

class DashboardScreen2 extends StatelessWidget {
  const DashboardScreen2({Key? key}) : super(key: key);
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    const Text(
                      'Hi Hailey',
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                    const Text(
                      'Let’ s check on your health',
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                    const Text(
                      'Sunday, April 19',
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                      ),
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 155,
                          height: 160,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: SvgPicture.asset(
                            Svgs.dialogiconbutton,
                            fit: BoxFit.fill,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Nav.push(
                              context,
                              const DeviceList(),
                            );
                          },
                          child: Container(
                            width: 155,
                            height: 160,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color(0xff388AF7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Heart rate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                const Text(
                                  "Continuously",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 223, 222, 222),
                                  ),
                                ),
                                const SizedBox(
                                    height: Dimensions.PADDING_SIZE_LARGE),
                                SizedBox(
                                  width: 40,
                                  child: Image.asset(Images.heart),
                                )

                                // Icon(
                                //   Icons.heart_broken,
                                //   size: 40,
                                //   color: Colors.white,
                                // )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 155,
                          height: 160,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xff7BDEFB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Time Intervals",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                                ),
                              ),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                              const Text(
                                "1.3 miles",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 223, 222, 222),
                                ),
                              ),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_LARGE),
                              SizedBox(
                                width: 40,
                                child: Image.asset(Images.timetravel),
                              )

                              // SvgPicture.asset(assetName)
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Nav.push(
                              context,
                              const GoogleMapsScreen(),
                            );
                          },
                          child: Container(
                            width: 155,
                            height: 160,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color(0xff414859),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "My Data",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                const Text(
                                  "History",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 223, 222, 222),
                                  ),
                                ),
                                const SizedBox(
                                    height: Dimensions.PADDING_SIZE_LARGE),
                                SizedBox(
                                  width: 40,
                                  child: SvgPicture.asset(Svgs.mydata),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    const ListTile(
                      leading: GreenLeadingRod(),
                      title: Text("Steve has a new speed record"),
                      subtitle: Text("Record speed of 15 ml / h"),
                    ),
                    const ListTile(
                      leading: GreenLeadingRod(),
                      title: Text("Danila reach the goal at 14"),
                      subtitle: Text("14 mile distance"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff979797),
                    ),
                    Icon(
                      Icons.newspaper,
                      color: Color(0xff979797),
                    ),
                    Icon(
                      Icons.saved_search,
                      color: Color(0xff979797),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GreenLeadingRod extends StatelessWidget {
  const GreenLeadingRod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 11,
          height: 5,
          decoration: BoxDecoration(
            color: ColorResources.greenColor,
            borderRadius: BorderRadius.circular(2.5),
          ),
        ),
      ],
    );
  }
}
