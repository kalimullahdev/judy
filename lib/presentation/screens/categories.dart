import 'package:flutter/material.dart';
import 'package:judy_flutter_ui/utill/dimensions.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);
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
          children: const [
            ListTile(
              title: Text(
                "Categories",
                style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CategoryScreenWidget(
              subtitle: '657 publications',
              title: 'International',
            ),
            CategoryScreenWidget(
              subtitle: '196 publications',
              title: 'Sport',
            ),
            CategoryScreenWidget(
              subtitle: '392 publications',
              title: 'Social',
            ),
            CategoryScreenWidget(
              subtitle: '593 publications',
              title: 'Business',
            ),
            CategoryScreenWidget(
              subtitle: '283 publications',
              title: 'Fashion',
            ),
            CategoryScreenWidget(
              subtitle: '747 publications',
              title: 'Health',
            ),
            CategoryScreenWidget(
              subtitle: '356 publications',
              title: 'Technology',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryScreenWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const CategoryScreenWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
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
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
