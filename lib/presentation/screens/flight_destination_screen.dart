import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class FlightDestinationScreen extends StatelessWidget {
  const FlightDestinationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Flight select destination",
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
                title: const Text("Search your destination"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                    )),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const ListTile(
                selected: true,
                selectedTileColor: Color(0xffB032E7),
                title: Text(
                  "Rome",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Italy",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  "CIA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                title: Text(
                  "Bologna",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("Italy"),
                trailing: Text("BLQ"),
              ),
              const ListTile(
                title: Text(
                  "London",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("United Kingdom"),
                trailing: Text("CRL"),
              ),
              const ListTile(
                title: Text(
                  "Dubai",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("United Arab Emirates"),
                trailing: Text("CDXBRL"),
              ),
              const ListTile(
                title: Text(
                  "Paris",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("France"),
                trailing: Text("CDG"),
              ),
              const ListTile(
                title: Text(
                  "Frankfurt",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("Germany"),
                trailing: Text("FRA"),
              ),
              const ListTile(
                title: Text(
                  "Munich",
                  style: TextStyle(color: Color(0xff223558)),
                ),
                subtitle: Text("Germany"),
                trailing: Text("MUC"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
