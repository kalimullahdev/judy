import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
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
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Reset",
              style: TextStyle(color: ColorResources.greyColor),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
          children: [
            const Text(
              'Filter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Container(
              width: Dimensions.getScreenSize(context).width * 0.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(0xffEFEFF4),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Color(0xffFF2D55),
                  ),
                  SizedBox(
                    width: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Text(
                    "San Francisco, United States",
                    style: TextStyle(),
                  ),
                  Expanded(
                      child: Icon(
                    Icons.location_city,
                    color: Color(0xff8A8A8F),
                  ))
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Discover Posts Near You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            Slider(
              min: 0,
              max: 100,
              value: 30,
              onChanged: (double value) {},
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: const [
                  Text("0 mile"),
                  SizedBox(width: 20),
                  Text("100 miles"),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Sort Options',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            ListTile(
              title: const Text(
                'Popularity',
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              trailing: Icon(
                Icons.circle_outlined,
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: const Text(
                'Lowest First',
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              trailing: Icon(
                Icons.check_circle,
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: const Text(
                'Higest First',
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              trailing: Icon(
                Icons.circle_outlined,
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: const Text(
                'Newly Listed',
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              trailing: Icon(
                Icons.circle_outlined,
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: const Text(
                'Best Offers',
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              trailing: Icon(
                Icons.circle_outlined,
                color: Colors.green[400],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),

            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Clothing ",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Streetwear",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Bag ",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Shoes",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Accessories ",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Beauty",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Swimwear ",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: const Text(
                      "Jackets",
                      style: TextStyle(
                        color: Color(0xff666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: Dimensions.getScreenSize(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff666666),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Price Range',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

            const Text(
              r'$10 - $87',
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_DEFAULT,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

            const Text(
              r'The average price is $45',
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_DEFAULT,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff5C58FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Apply Filters",
                style: TextStyle(),
              ),
            )
            // SizedBox(
            //   height: 400,
            //   width: 200,
            //   child: GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //       maxCrossAxisExtent: 2,
            //     ),
            //     itemBuilder: (context, index) {
            //       return Container(
            //         width: 100,
            //         height: 100,
            //         decoration: const BoxDecoration(
            //           color: Colors.green,
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
