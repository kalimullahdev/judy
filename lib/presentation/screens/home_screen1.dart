import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens/filter_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/home_screen.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class HomeScreen1 extends StatelessWidget {
  HomeScreen1({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const NavDrawer(),
      backgroundColor: const Color(0xff5C58FF),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            ListTile(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              leading: const CircleAvatar(
                backgroundColor: ColorResources.greyColor,
              ),
              title: const Text(
                "`Hello` Edward!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.folder,
                        color: Colors.white,
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            Container(
              width: Dimensions.getScreenSize(context).width * 0.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 79, 77, 223),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 220,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        // color: ColorResources.whiteColor,
                        color: Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Color(0xff5C58FF),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Personal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          const SizedBox(
                            height: Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          Column(
                            children: const [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "64%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color(0xff5C58FF),
                                height: 20,
                                thickness: 2,
                                indent: 0,
                                endIndent: 80,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 220,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(
                        width: 2.4,
                        color: Colors.white,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const TabBarDemo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: const Color(0xff5C58FF),
          isScrollable: true,
          tabs: [
            Tab(
                icon: Row(
              children: [
                const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Center(
                    child: Text("56"),
                  ),
                ),
              ],
            )),
            const Tab(
                icon: Text(
              "Current",
              style: TextStyle(
                color: Colors.grey,
              ),
            )),
            const Tab(
              icon: Text(
                "Pending",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Tab(
                icon: Text(
              "Completed",
              style: TextStyle(
                color: Colors.grey,
              ),
            )),
          ],
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Dimensions.getScreenSize(context).width * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Folders"),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.getScreenSize(context).width * 0.50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.filter_vintage,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FilterScreen(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.filter_list,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.grid_view_rounded,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      HomeScreenListTile(),
                      HomeScreenListTile(),
                      HomeScreenListTile(),
                    ],
                  )
                ],
              ),
            ),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
            const Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class HomeScreenListTile extends StatelessWidget {
  const HomeScreenListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 400,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Website Dashboard UI Kit"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * 0.88,
                child: Stack(
                  children: const [
                    Positioned(
                      // left: 21,
                      child: CircleAvatar(
                        backgroundColor: ColorResources.greyColor,
                        radius: 15,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      child: CircleAvatar(
                        backgroundColor: ColorResources.blueColor,
                        radius: 15,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      child: CircleAvatar(
                        backgroundColor: ColorResources.greyColor,
                        radius: 15,
                      ),
                    ),
                    Positioned(
                      left: 80,
                      child: CircleAvatar(
                        backgroundColor: ColorResources.greyColor,
                        radius: 15,
                        child: Text(
                          "+5",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
