import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);
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
            children: const [
              SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              ListTile(
                title: Text(
                  "What is your main goal in learning something now?",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    // color: Colors.white,
                  ),
                ),
              ),

              Card(
                elevation: 2,
                child: ListTile(
                  title: Text("Start a new career and skills"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
              Card(
                elevation: 2,
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
                elevation: 2,
                child: ListTile(
                  title: Text("Advance my career"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text("Advance my educational goal"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text("Start a new skills"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
              // Just for fun
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text("I love to learn new things"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text("Just for fun"),
                  trailing: Icon(Icons.radio_button_off),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
