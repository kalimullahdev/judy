import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class ChooseCourse extends StatefulWidget {
  const ChooseCourse({Key? key}) : super(key: key);

  @override
  State<ChooseCourse> createState() => _ChooseCourseState();
}

class _ChooseCourseState extends State<ChooseCourse> {
  final List<String> courseList = <String>[
    "Business",
    "Computer Science",
    "Math and Logic",
    "Language Learning",
  ];

  String currentCourseValue = "Language Learning";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          height: Dimensions.getScreenSize(context).height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
            children: [
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              const ListTile(
                title: Text(
                  "Choose at least 1",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    // color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: courseList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExpansionTile(
                    textColor: Colors.black,
                    children: [
                      ListTile(
                        leading: Radio(
                          value: 1,
                          groupValue: 22,
                          onChanged: (value) {},
                        ),
                        title: Text(courseList[index]),
                      ),
                      ListTile(
                        leading: Radio(
                          activeColor: Colors.green,
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        title: const Text("Finance"),
                      ),
                      ListTile(
                        leading: Radio(
                          value: 1,
                          groupValue: 22,
                          onChanged: (value) {},
                        ),
                        title: const Text("Marketing"),
                      ),
                      ListTile(
                        leading: Radio(
                          value: 1,
                          groupValue: 22,
                          onChanged: (value) {},
                        ),
                        title: const Text("Entrepreneurship"),
                      ),
                    ],
                    trailing: SizedBox(
                      width: 20,
                      height: 20,
                      child: Icon(
                        currentCourseValue == courseList[index]
                            ? Icons.radio_button_on
                            : Icons.radio_button_unchecked,
                        color: Colors.green,
                      ),
                    ),
                    title: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xff8A8A8F),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      title: GestureDetector(
                        onTap: () => setState(() {
                          currentCourseValue = courseList[index];
                        }),
                        child: Text(courseList[index]),
                      ),
                      subtitle: const Text("538 courses"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
