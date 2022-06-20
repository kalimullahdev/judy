import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';

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
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xff388AF7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Heart rate",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                ),
                              ),
                              SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                              Text(
                                "Continuously",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 223, 222, 222),
                                ),
                              ),
                              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                              Icon(
                                Icons.heart_broken,
                                size: 40,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xff388AF7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xff7BDEFB),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Time Intervals",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                                ),
                              ),
                              SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                              Text(
                                "1.3 miles",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 223, 222, 222),
                                ),
                              ),
                              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                              Icon(
                                Icons.more,
                                size: 40,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xff414859),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "My Data",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                ),
                              ),
                              SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                              Text(
                                "History",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 223, 222, 222),
                                ),
                              ),
                              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
                              Icon(
                                Icons.history,
                                size: 40,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    const ListTile(
                      leading: CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.green,
                      ),
                      title: Text("Steve has a new speed record"),
                      subtitle: Text("Record speed of 15 ml / h"),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.green,
                      ),
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
