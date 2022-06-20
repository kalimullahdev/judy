import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/color_resources.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Cancel",
            style: TextStyle(color: ColorResources.blueColor),
          ),
        ),
        title: const Text(
          "Search",
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_LARGE,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: Dimensions.getScreenSize(context).width * 0.86,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.location_searching_rounded,
                ),
                title: const Text("Top"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear,
                    )),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Search',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "Top Film Action",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                leading: Icon(Icons.search),
              ),
              const ListTile(
                title: Text(
                  "Top Film Marvle",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                leading: Icon(Icons.search),
              ),
              const ListTile(
                title: Text(
                  "Top music US ",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                leading: Icon(Icons.search),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Moutain Top',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "Top Film Action",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                leading: Icon(Icons.music_note),
              ),
              const ListTile(
                leading: Icon(Icons.music_note),
                title: Text(
                  "Top Song Europe ",
                  style: TextStyle(color: Color(0xff223558)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
