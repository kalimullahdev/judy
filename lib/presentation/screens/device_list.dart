import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/styles.dart';

class DeviceList extends StatefulWidget {
  const DeviceList({Key? key}) : super(key: key);

  @override
  State<DeviceList> createState() => _DeviceListState();
}

class _DeviceListState extends State<DeviceList> {
  bool airConditionerToggle = false;
  bool microwaveToggle = false;
  bool vacumCleanerToggle = true;
  bool waterPurifierToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Devices",
          style: TextStyle(
            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: Styles.boxShadow,
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
            children: [
              // List devices (4)
              const Text(
                "New Device",
                style: TextStyle(
                  color: Color(0xff6F6798),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 5.0,
                    )
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff26B9D1),
                      Color(0xff13C2B4),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.add),
                      SizedBox(
                        width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                      ),
                      Text("Add device"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const Text(
                "List devices (4)",
                style: TextStyle(
                  color: Color(0xff6F6798),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: Styles.boxDecorationWithShadow,
                  child: ListTile(
                    onTap: (() {
                      setState(
                        () {
                          airConditionerToggle = !airConditionerToggle;
                        },
                      );
                    }),
                    title: const Text("Air Conditioner"),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Color(0xff26B9D1),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Active",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA1AFC3),
                          ),
                        ),
                      ],
                    ),
                    trailing: airConditionerToggle
                        ? const Icon(
                            Icons.toggle_on,
                            size: 40,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.toggle_off,
                            size: 40,
                            // color: Colors.black,
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: Styles.boxDecorationWithShadow,
                  child: ListTile(
                    onTap: () {
                      setState(
                        () {
                          microwaveToggle = !microwaveToggle;
                        },
                      );
                    },
                    title: const Text("Microwave"),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Color(0xffF16487),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Waiting",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA1AFC3),
                          ),
                        ),
                      ],
                    ),
                    trailing: microwaveToggle
                        ? const Icon(
                            Icons.toggle_on,
                            size: 40,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.toggle_off,
                            size: 40,
                            // color: Colors.black,
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: Styles.boxDecorationWithShadow,
                  child: ListTile(
                    onTap: () {
                      setState(
                        () {
                          vacumCleanerToggle = !vacumCleanerToggle;
                        },
                      );
                    },
                    title: const Text("Vacuum Cleaner"),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Color(0xffA1AFC3),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Offline",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA1AFC3),
                          ),
                        ),
                      ],
                    ),
                    trailing: vacumCleanerToggle
                        ? const Icon(
                            Icons.toggle_on,
                            size: 40,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.toggle_off,
                            size: 40,
                            // color: Colors.black,
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: Styles.boxDecorationWithShadow,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        waterPurifierToggle = !waterPurifierToggle;
                      });
                    },
                    title: const Text("Water Purifier"),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Color(0xffF16487),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Waiting",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA1AFC3),
                          ),
                        ),
                      ],
                    ),
                    trailing: waterPurifierToggle
                        ? const Icon(
                            Icons.toggle_on,
                            size: 40,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.toggle_off,
                            size: 40,
                            // color: Colors.black,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
