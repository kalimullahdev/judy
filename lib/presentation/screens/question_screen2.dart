import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class QuestionScreen2 extends StatelessWidget {
  const QuestionScreen2({Key? key}) : super(key: key);
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
                  "What is your main goal in learning something now?",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    // color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Card(
                      child: ListTile(
                        title: Text("Start a new career and skills"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          "Start a new career",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          Icons.radio_button_on,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Advance my career"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Advance my educational goal"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Start a new skills"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                    // Just for fun
                    Card(
                      child: ListTile(
                        title: Text("I love to learn new things"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Just for fun"),
                        trailing: Icon(Icons.radio_button_off),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
