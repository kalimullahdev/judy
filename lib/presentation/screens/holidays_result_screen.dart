import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class HolidaysResultScreen extends StatelessWidget {
  const HolidaysResultScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const ClampingScrollPhysics(),
              children: const [
                HolidayResultCard(
                  imageSrc: "assets/images/hr1.png",
                  title: "Natural Landmarks",
                  subtitle: "Wonders of Canada",
                  duration: 10,
                  noOfDays: 80,
                  isFirstCard: true,
                ),
                HolidayResultCard(
                  imageSrc: "assets/images/hr2.png",
                  title: "History and Culture ",
                  subtitle: "Treasures of Italy",
                  duration: 10,
                  noOfDays: 80,
                  isFirstCard: false,
                ),
                HolidayResultCard(
                  imageSrc: "assets/images/hr3.png",
                  title: "Haritage and History",
                  subtitle: "Prague at night",
                  duration: 10,
                  noOfDays: 80,
                  isFirstCard: false,
                ),
                HolidayResultCard(
                  imageSrc: "assets/images/hr4.png",
                  title: "Haritage and History",
                  subtitle: "The great America",
                  duration: 10,
                  noOfDays: 80,
                  isFirstCard: false,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HolidayResultCard extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String subtitle;
  final int duration;
  final int noOfDays;
  final bool isFirstCard;
  const HolidayResultCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.noOfDays,
    this.isFirstCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: isFirstCard ? 240 : 210,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSrc),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: isFirstCard ? 240 : 210,
          width: double.infinity,
          color: Colors.black.withOpacity(0.4),
        ),
        Positioned(
          bottom: 50,
          left: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.FONT_SIZE_LARGE,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        " 80 places    ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        ),
                      ),
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        " Duration: 10 days ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            child: const Text(
              "View more",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          bottom: 35,
          right: 15,
        )
      ],
    );
  }
}
