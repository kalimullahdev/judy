import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xffBA88D1),
        bottomNavigationBar: Theme(
          data: ThemeData(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.grey[900],
              elevation: 10,
              unselectedLabelStyle: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'Montserrat',
              ),
              selectedItemColor: const Color(0xFFA67926),
              unselectedItemColor: Colors.grey[600],
              showUnselectedLabels: true,
            ),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Browse',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.watch_later),
                label: 'Courses',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks),
                label: 'Bookmarks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: const Color(0xff5C58FF),
            onTap: (value) {},
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffBA88D1),
          title: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_SMALL,
              vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            child: Container(
              width: Dimensions.getScreenSize(context).width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff000000).withOpacity(0.2),
                // border: Inpn,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  hintText: 'Type someting here',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Do something
                },
              ),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Business"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("History"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Politics"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Language"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Literature"),
              ),
            ],
          ),
        ),
        body:
            //  Center(
            //   child: ListView(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: Dimensions.PADDING_SIZE_DEFAULT,
            //       vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            //     ),
            //     children: [
            //       const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            //       TextFormField(
            //         // initialValue: "Enter your product name",
            //         decoration: InputDecoration(
            //           prefixIcon: Icon(
            //             Icons.search,
            //             color: Colors.white.withOpacity(0.6),
            //           ),
            //           filled: true,
            //           border: InputBorder.none,
            //           fillColor: const Color(0xff000000).withOpacity(0.2),
            //           hintText: "Enter your product name",
            //           hintStyle: TextStyle(
            //             color: Colors.white.withOpacity(0.6),
            //           ),
            //         ),
            //       ),
            //       // const TabBar(
            //       //   tabs: [
            //       //     Icon(Icons.abc),
            //       //     Icon(Icons.abc),
            //       //     Icon(Icons.abc),
            //       //   ],
            //       // ),
            //       // const TabBarView(
            //       //   children: [
            //       //     SizedBox(),
            //       //     SizedBox(),
            //       //     SizedBox(),
            //       //   ],
            //       // ),
            //     ],
            //   ),
            // ),

            TabBarView(
          children: [
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 500,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage(Images.flightPayment),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 500,
                        height: 260,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Start learning a new skill",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                                height: Dimensions.PADDING_SIZE_SMALL),
                            const Text(
                              "Explore your future here",
                              style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                                height: Dimensions.PADDING_SIZE_SMALL),
                            const Text(
                              "Get 50% Discount",
                              style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                                height: Dimensions.PADDING_SIZE_DEFAULT),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Learn More"),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffFF9500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                Container(
                  width: Dimensions.getScreenSize(context).width,
                  height: Dimensions.getScreenSize(context).height / 2,
                  color: Colors.white,
                  padding:
                      const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const ListTile(
                        leading: Text(
                          "Top Authors",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          "See all >",
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                            AuthorWidget(),
                            AuthorWidget(),
                            AuthorWidget(),
                            AuthorWidget(),
                            AuthorWidget(),
                            AuthorWidget(),
                          ],
                        ),
                      ),
                      const ListTile(
                        leading: Text(
                          "Recommended Courses",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          "See all >",
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                            CourseWidget(),
                            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                            CourseWidget(),
                            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                            CourseWidget(),
                            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                            CourseWidget(),
                          ],
                        ),
                      ),
                      const ListTile(
                        leading: Text(
                          "Popular Skills",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          "See all >",
                        ),
                      ),
                      GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        shrinkWrap: true,
                        children: const [
                          CourseCollectionWidget(),
                          CourseCollectionWidget(),
                          CourseCollectionWidget(),
                          CourseCollectionWidget(),
                        ],
                      ),
                      // const CourseCollectionWidget(),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      ),
                      const SizedBox(
                        height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                "Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCollectionWidget extends StatelessWidget {
  const CourseCollectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 210,
          height: 170,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Creative Arts",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                ),
              ),
              SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Text(
                "538 courses",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 250,
          height: 170,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
        const Text(
          "Predictive Analytics for Business",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_TOO_SMALL),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text("1h 47s   "),
            Text("7 lessons   "),
            Icon(
              Icons.star,
              size: 18,
              color: Colors.orange,
            ),
            Text("4.5"),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
        Row(
          children: [
            const CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Amanda Lockwood"),
                Text(
                  "Finance",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_SMALL,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.grey,
          minRadius: 35,
        ),
        const SizedBox(
          height: Dimensions.PADDING_SIZE_SMALL,
        ),
        const SizedBox(
          width: 100,
          child: Text(
            "Gerard Fabiano",
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: Dimensions.PADDING_SIZE_SMALL,
        ),
        Row(
          children: const [
            Icon(
              Icons.movie_sharp,
            ),
            Text(" 87")
          ],
        ),
      ],
    );
  }
}
