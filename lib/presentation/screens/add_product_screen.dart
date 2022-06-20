import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Don't show the leading button

        title: Row(
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Color(0xff666666),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_LARGE,
            vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Photos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Upload up to 6 photos',
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: Dimensions.FONT_SIZE_DEFAULT,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffC8C7CC),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.red,
                            size: 18,
                          ),
                        ),
                        const Text(
                          "80 x 80",
                          style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_SMALL,
                            color: Color(0xff8A8A8F),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Select",
                              style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffC8C7CC),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.red,
                            size: 18,
                          ),
                        ),
                        Text(
                          "80 x 80",
                          style: TextStyle(
                            fontSize: Dimensions.FONT_SIZE_SMALL,
                            color: Color(0xff8A8A8F),
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffC8C7CC),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Text(
              'Tap on a photo to select as primary image',
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: Dimensions.FONT_SIZE_DEFAULT,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              'Title',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            TextFormField(
              // initialValue: "Enter your product name",
              decoration: const InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Color(0xffEFEFF4),
                hintText: "Enter your product name",
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              'Description',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Color(0xffEFEFF4),
                hintText: "Write about your product",
              ),
            ),
            const Text(
              "250 characters max",
              style: TextStyle(
                color: Color(0xff8A8A8F),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      r"Price ($)",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.getScreenSize(context).width * 0.4,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          fillColor: Color(0xffEFEFF4),
                          hintText: "Enter price",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Quantity",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.getScreenSize(context).width * 0.4,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          fillColor: Color(0xffEFEFF4),
                          hintText: "Available qty.",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              "Quantity",
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ColorResources.blueColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Clothing",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Streetwear",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Bag",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),

                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Shoes",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Accessories",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  // Accessories
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              "Condition",
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "New",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ColorResources.blueColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Remanufactured",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Used",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),

                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Not Specified",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffEFEFF4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Accessories",
                      style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        color: Color(0xff666666),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  // Accessories
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              "Shipping",
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text("Shipping Available?"),
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              'Location',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            TextFormField(
              // initialValue: "Enter your product name",
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.location_on,
                  color: Color(0xffFF2D55),
                ),
                filled: true,
                border: InputBorder.none,
                fillColor: Color(0xffEFEFF4),
                hintText: "San Francisco, United States",
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            const Text(
              'Share on',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            ListTile(
              leading: const Icon(
                Icons.facebook,
                color: Color(0xff3A5998),
                size: 30,
              ),
              title: const Text("Facebook"),
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            ListTile(
              leading: const Icon(
                Icons.facebook,
                color: Color.fromARGB(255, 27, 214, 247),
                size: 30,
              ),
              title: const Text("Twitter"),
              trailing: CupertinoSwitch(
                value: false,
                onChanged: (bool value) {},
              ),
            ),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_DEFAULT,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff5C58FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Post",
                style: TextStyle(),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          ],
        ),
      ),
    );
  }
}
