import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool newsButtonOn = true;
  bool textMessagesButtonOn = false;
  bool phoneCallsButtonOn = false;

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
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Account",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff7C42FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: const Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              title: const Text(
                "Change Password",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff7C42FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              title: const Text(
                "Notifications",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff7C42FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: const Icon(
                  Icons.handyman,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              title: const Text(
                "Privacy Settings",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff7C42FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              title: const Text(
                "Sign Out",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                title: Text(
                  "More Options",
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Newsletter",
              ),
              trailing: CupertinoSwitch(
                value: newsButtonOn,
                onChanged: (bool value) {
                  setState(() {
                    newsButtonOn = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                "Text Messages",
              ),
              trailing: CupertinoSwitch(
                value: textMessagesButtonOn,
                onChanged: (bool value) {
                  setState(() {
                    textMessagesButtonOn = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                "Phone Calls",
              ),
              trailing: CupertinoSwitch(
                value: phoneCallsButtonOn,
                onChanged: (bool value) {
                  setState(() {
                    phoneCallsButtonOn = value;
                  });
                },
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Currency",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    r"$-USD ",
                    style: TextStyle(
                      color: Color(0xff8A8A8F),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Languages",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "English ",
                    style: TextStyle(
                      color: Color(0xff8A8A8F),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Linked Accounts",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Facebook, Google ",
                    style: TextStyle(
                      color: Color(0xff8A8A8F),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
