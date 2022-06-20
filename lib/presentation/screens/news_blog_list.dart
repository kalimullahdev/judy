import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class NewsBlogList extends StatelessWidget {
  const NewsBlogList({Key? key}) : super(key: key);
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Short by date',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ), // <-- Text
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ), // <-- Text
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              const NewsCard(
                postedDate: 'Posted on: 3 March, 2016',
                imageSrc: "assets/images/hourse.png",
                title: 'Living The Dream: It’s Not About The Money',
                showImageOnRight: false,
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              const NewsCard(
                postedDate: 'Posted on: 3 March, 2016',
                imageSrc: "assets/images/scene.png",
                title: 'Top 10 Things To Do In New York With Kids',
                showImageOnRight: true,
              ),
              const SizedBox(
                height: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              const NewsCard(
                postedDate: 'Posted on: 3 March, 2016',
                imageSrc: "assets/images/hourse.png",
                title: 'Living The Dream: It’s Not About The Money',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String postedDate;
  final bool showImageOnRight;
  const NewsCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.postedDate,
    this.showImageOnRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment:
            showImageOnRight ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          showImageOnRight
              ? const SizedBox()
              : Row(
                  children: [
                    Image.asset(
                      imageSrc,
                      width: 140,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                  ],
                ),
          Column(
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              SizedBox(
                width: 200,
                child: Text(
                  postedDate,
                  style: const TextStyle(
                      // fontSize: Dimensions.FONT_SIZE_LARGE,
                      // fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          showImageOnRight
              ? Row(
                  children: [
                    Image.asset(
                      imageSrc,
                      width: 140,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
