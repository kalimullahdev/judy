import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/presentation/screens//home_screen.dart';
import 'package:judy_flutter_ui/presentation/screens/bottom_sheets.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE88BFF),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 180,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset:
                          Offset(1.0, -1.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 20,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms and ',
                            style: TextStyle(
                              color: Color(0xff051D3F),
                            ),
                          ),
                          TextSpan(
                              text: 'conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7C42FF),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Et quidem se ipsam voluptatem, quia dolor sit id, de quo quaerimus, non emolumento aliquo, sed et harum quidem exercitus quid ex ea quid bonum esse fugiendum itaque negat opus esse fugiendum itaque earum rerum necessitatibus saepe eveniet, ut earum rerum hic tenetur a natura .Epicurus in gravissimo bello animadversionis metu degendae praesidia firmissima filium morte multavit si sine metu contineret, saluti prospexit civium. Qua intellegebat contineri suam atque insitam in malis dolor, non possim accommodare torquatos nostros? quos tu tam egregios viros censes tantas res gessisse sine causa, mox. At vero eos et quasi involuta aperiri, altera prompta et quas molestias excepturi sint, obcaecati cupiditate.",
                      style: TextStyle(
                        color: Color(0xffA1AFC3),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DialogCustomRoundedButton(
                      buttonText: "Accept Terms",
                      onpressed: () {
                        showBottomPermissionSheet(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => HomeScreen(),
                        //   ),
                        // );
                      },
                      width: 260,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Read later",
                        style: TextStyle(
                          color: Color(0xffA1AFC3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
