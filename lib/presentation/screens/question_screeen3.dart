import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class QuestionScreen3 extends StatelessWidget {
  const QuestionScreen3({Key? key}) : super(key: key);
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
                height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              const ListTile(
                title: Text(
                  "How much time do you want to spend to learn something that you like",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    // color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
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
                        leading: Icon(Icons.radio_button_off),
                        trailing: Text("5 minutes"),
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
                        trailing: Text("10 minutes"),
                        leading: Icon(
                          Icons.radio_button_on,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Advance my career"),
                        leading: Icon(Icons.radio_button_off),
                        trailing: Text("20 minutes"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Advance my educational goal"),
                        leading: Icon(Icons.radio_button_off),
                        trailing: Text("60 minutes"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Start a new skills"),
                        leading: Icon(Icons.radio_button_off),
                        trailing: Text("90 minutes"),
                      ),
                    ),
                    // Just for fun
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
