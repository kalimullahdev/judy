import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';
import 'package:judy_flutter_ui/utill/images.dart';

class FlightPaymentDetails extends StatelessWidget {
  const FlightPaymentDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.flightPayment),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: Dimensions.getScreenSize(context).width,
            height: Dimensions.getScreenSize(context).height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff435C86).withOpacity(0.95),
                  const Color(0xff061227).withOpacity(0.95),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    const Text(
                      "LetsGoTraveler",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              const Center(
                child: Text(
                  "Payment Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              Center(
                child: Container(
                  height: 200,
                  width: Dimensions.getScreenSize(context).width * 0.93,
                  decoration: BoxDecoration(
                    color: const Color(0xff717784).withOpacity(0.4),
                    border: Border.all(
                      color: Colors.white,
                      width: 0.6,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Air Ticket From",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            ),
                          ),
                          Text(
                            "On 23 June, 2016",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "ANX to TRS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                            ),
                          ),
                          Text(
                            r"$857.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              const Padding(
                padding: EdgeInsets.only(
                  left: 18,
                ),
                child: Text(
                  "Select Payment Options",
                  style: TextStyle(
                    color: Color(0xffF6F6F6),
                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              Center(
                child: Container(
                  height: 120,
                  width: Dimensions.getScreenSize(context).width * 0.93,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 0.6,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.wallet_membership,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: Dimensions.PADDING_SIZE_DEFAULT,
                              ),
                              Text(
                                "Wallet",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            r"$167.00",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Your current balance",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimensions.FONT_SIZE_DEFAULT,
                            ),
                          ),
                          Text(
                            "Add balance now +",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimensions.FONT_SIZE_DEFAULT,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              Center(
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.all(
                    Dimensions.PADDING_SIZE_LARGE,
                  ),
                  // width: Dimensions.getScreenSize(context).width * 0.93,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_LARGE,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 0.6,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.paypal,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: Dimensions.PADDING_SIZE_DEFAULT,
                              ),
                              Text(
                                "Paypal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            r"$167.00",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: Dimensions.PADDING_SIZE_LARGE,
                          ),
                          SizedBox(
                            width: 130,
                            child: Text(
                              "Your mail id: jhon@sample.com",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.FONT_SIZE_DEFAULT,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            child: Text(
                              "Pay with your paypal balance",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.FONT_SIZE_DEFAULT,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          border: Border.all(
                            width: 2,
                            color: Colors.green,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      const Text(
                        "Add another payment method",
                        style: TextStyle(
                          color: Color(0xff6D7380),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
